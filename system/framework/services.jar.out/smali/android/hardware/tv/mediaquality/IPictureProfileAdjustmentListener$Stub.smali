.class public abstract Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;
.super Landroid/os/Binder;
.source "IPictureProfileAdjustmentListener.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onParamCapabilityChanged:I = 0x2

.field static final TRANSACTION_onPictureProfileAdjusted:I = 0x1

.field static final TRANSACTION_onStreamStatusChanged:I = 0x5

.field static final TRANSACTION_onVendorParamCapabilityChanged:I = 0x3

.field static final TRANSACTION_requestPictureParameters:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    sget-object v0, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 83
    sparse-switch p0, :sswitch_data_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 107
    :sswitch_0
    const-string/jumbo v0, "getInterfaceVersion"

    return-object v0

    .line 111
    :sswitch_1
    const-string/jumbo v0, "getInterfaceHash"

    return-object v0

    .line 103
    :sswitch_2
    const-string/jumbo v0, "onStreamStatusChanged"

    return-object v0

    .line 99
    :sswitch_3
    const-string/jumbo v0, "requestPictureParameters"

    return-object v0

    .line 95
    :sswitch_4
    const-string/jumbo v0, "onVendorParamCapabilityChanged"

    return-object v0

    .line 91
    :sswitch_5
    const-string/jumbo v0, "onParamCapabilityChanged"

    return-object v0

    .line 87
    :sswitch_6
    const-string/jumbo v0, "onPictureProfileAdjusted"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 78
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 339
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 122
    invoke-static {p1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 126
    sget-object v0, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    .line 127
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v2

    .line 134
    :cond_1
    if-ne p1, v1, :cond_2

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return v2

    .line 139
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v2

    .line 144
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 185
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 187
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 188
    .local v1, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-interface {p0, v3, v4, v1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->onStreamStatusChanged(JB)V

    .line 190
    goto :goto_0

    .line 177
    .end local v1    # "_arg1":B
    .end local v3    # "_arg0":J
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 178
    .restart local v3    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-interface {p0, v3, v4}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->requestPictureParameters(J)V

    .line 180
    goto :goto_0

    .line 167
    .end local v3    # "_arg0":J
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 169
    .restart local v3    # "_arg0":J
    sget-object v1, Landroid/hardware/tv/mediaquality/VendorParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/mediaquality/VendorParamCapability;

    .line 170
    .local v1, "_arg1":[Landroid/hardware/tv/mediaquality/VendorParamCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-interface {p0, v3, v4, v1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V

    .line 172
    goto :goto_0

    .line 157
    .end local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/VendorParamCapability;
    .end local v3    # "_arg0":J
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 159
    .restart local v3    # "_arg0":J
    sget-object v1, Landroid/hardware/tv/mediaquality/ParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/mediaquality/ParamCapability;

    .line 160
    .local v1, "_arg1":[Landroid/hardware/tv/mediaquality/ParamCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-interface {p0, v3, v4, v1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V

    .line 162
    goto :goto_0

    .line 149
    .end local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/ParamCapability;
    .end local v3    # "_arg0":J
    :pswitch_4
    sget-object v1, Landroid/hardware/tv/mediaquality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/PictureProfile;

    .line 150
    .local v1, "_arg0":Landroid/hardware/tv/mediaquality/PictureProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->onPictureProfileAdjusted(Landroid/hardware/tv/mediaquality/PictureProfile;)V

    .line 152
    nop

    .line 197
    .end local v1    # "_arg0":Landroid/hardware/tv/mediaquality/PictureProfile;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
