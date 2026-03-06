.class public abstract Lvendor/qti/hardware/servicetrackeraidl/IServicetracker$Stub;
.super Landroid/os/Binder;
.source "IServicetracker.java"

# interfaces
.implements Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/servicetrackeraidl/IServicetracker$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_bindService:I = 0x1

.field static final TRANSACTION_destroyService:I = 0x2

.field static final TRANSACTION_getClientConnections:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getPid:I = 0x4

.field static final TRANSACTION_getPids:I = 0x5

.field static final TRANSACTION_getRunningServicePid:I = 0x6

.field static final TRANSACTION_getServiceBCount:I = 0x7

.field static final TRANSACTION_getServiceConnections:I = 0x8

.field static final TRANSACTION_getclientInfo:I = 0x9

.field static final TRANSACTION_getserviceInfo:I = 0xa

.field static final TRANSACTION_isServiceB:I = 0xb

.field static final TRANSACTION_killProcess:I = 0xc

.field static final TRANSACTION_startService:I = 0xd

.field static final TRANSACTION_unbindService:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 95
    sget-object v0, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    sget-object v0, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;

    if-eqz v1, :cond_1

    .line 108
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;

    return-object v1

    .line 110
    :cond_1
    new-instance v1, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 114
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

    .line 118
    sget-object v0, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->DESCRIPTOR:Ljava/lang/String;

    .line 119
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v2

    .line 126
    :cond_1
    if-ne p1, v1, :cond_2

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-interface {p0}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return v2

    .line 131
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-interface {p0}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v2

    .line 136
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 270
    :pswitch_0
    sget-object v1, Lvendor/qti/hardware/servicetrackeraidl/ServiceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/servicetrackeraidl/ServiceData;

    .line 272
    .local v1, "_arg0":Lvendor/qti/hardware/servicetrackeraidl/ServiceData;
    sget-object v3, Lvendor/qti/hardware/servicetrackeraidl/ClientData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/servicetrackeraidl/ClientData;

    .line 273
    .local v3, "_arg1":Lvendor/qti/hardware/servicetrackeraidl/ClientData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-interface {p0, v1, v3}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->unbindService(Lvendor/qti/hardware/servicetrackeraidl/ServiceData;Lvendor/qti/hardware/servicetrackeraidl/ClientData;)V

    .line 275
    goto/16 :goto_1

    .line 262
    .end local v1    # "_arg0":Lvendor/qti/hardware/servicetrackeraidl/ServiceData;
    .end local v3    # "_arg1":Lvendor/qti/hardware/servicetrackeraidl/ClientData;
    :pswitch_1
    sget-object v1, Lvendor/qti/hardware/servicetrackeraidl/ServiceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/servicetrackeraidl/ServiceData;

    .line 263
    .restart local v1    # "_arg0":Lvendor/qti/hardware/servicetrackeraidl/ServiceData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->startService(Lvendor/qti/hardware/servicetrackeraidl/ServiceData;)V

    .line 265
    goto/16 :goto_1

    .line 254
    .end local v1    # "_arg0":Lvendor/qti/hardware/servicetrackeraidl/ServiceData;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->killProcess(I)V

    .line 257
    goto/16 :goto_1

    .line 244
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->isServiceB(Ljava/lang/String;)Z

    move-result v3

    .line 247
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 249
    goto/16 :goto_1

    .line 234
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getserviceInfo(Ljava/lang/String;)Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;

    move-result-object v3

    .line 237
    .local v3, "_result":Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 239
    goto/16 :goto_1

    .line 224
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getclientInfo(Ljava/lang/String;)Lvendor/qti/hardware/servicetrackeraidl/ClientRecord;

    move-result-object v3

    .line 227
    .local v3, "_result":Lvendor/qti/hardware/servicetrackeraidl/ClientRecord;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 229
    goto/16 :goto_1

    .line 214
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lvendor/qti/hardware/servicetrackeraidl/ClientRecord;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getServiceConnections(Ljava/lang/String;)[Lvendor/qti/hardware/servicetrackeraidl/ServiceConnection;

    move-result-object v3

    .line 217
    .local v3, "_result":[Lvendor/qti/hardware/servicetrackeraidl/ServiceConnection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 219
    goto/16 :goto_1

    .line 196
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Lvendor/qti/hardware/servicetrackeraidl/ServiceConnection;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, "_arg0_length":I
    const v3, 0xf4240

    if-gt v1, v3, :cond_5

    .line 199
    if-gez v1, :cond_4

    .line 200
    const/4 v3, 0x0

    .local v3, "_arg0":[Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;
    goto :goto_0

    .line 202
    .end local v3    # "_arg0":[Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;
    :cond_4
    new-array v3, v1, [Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;

    .line 204
    .restart local v3    # "_arg0":[Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-interface {p0, v3}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getServiceBCount([Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;)I

    move-result v4

    .line 206
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 209
    goto/16 :goto_1

    .line 198
    .end local v3    # "_arg0":[Lvendor/qti/hardware/servicetrackeraidl/ServiceRecord;
    .end local v4    # "_result":I
    :cond_5
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    .end local v1    # "_arg0_length":I
    :pswitch_8
    invoke-interface {p0}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getRunningServicePid()[I

    move-result-object v1

    .line 189
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 191
    goto :goto_1

    .line 179
    .end local v1    # "_result":[I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getPids([Ljava/lang/String;)[I

    move-result-object v3

    .line 182
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 184
    goto :goto_1

    .line 169
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getPid(Ljava/lang/String;)I

    move-result v3

    .line 172
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    goto :goto_1

    .line 159
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->getClientConnections(Ljava/lang/String;)[Lvendor/qti/hardware/servicetrackeraidl/ClientConnection;

    move-result-object v3

    .line 162
    .local v3, "_result":[Lvendor/qti/hardware/servicetrackeraidl/ClientConnection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 164
    goto :goto_1

    .line 151
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Lvendor/qti/hardware/servicetrackeraidl/ClientConnection;
    :pswitch_c
    sget-object v1, Lvendor/qti/hardware/servicetrackeraidl/ServiceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/servicetrackeraidl/ServiceData;

    .line 152
    .local v1, "_arg0":Lvendor/qti/hardware/servicetrackeraidl/ServiceData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-interface {p0, v1}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->destroyService(Lvendor/qti/hardware/servicetrackeraidl/ServiceData;)V

    .line 154
    goto :goto_1

    .line 141
    .end local v1    # "_arg0":Lvendor/qti/hardware/servicetrackeraidl/ServiceData;
    :pswitch_d
    sget-object v1, Lvendor/qti/hardware/servicetrackeraidl/ServiceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/servicetrackeraidl/ServiceData;

    .line 143
    .restart local v1    # "_arg0":Lvendor/qti/hardware/servicetrackeraidl/ServiceData;
    sget-object v3, Lvendor/qti/hardware/servicetrackeraidl/ClientData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/servicetrackeraidl/ClientData;

    .line 144
    .local v3, "_arg1":Lvendor/qti/hardware/servicetrackeraidl/ClientData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-interface {p0, v1, v3}, Lvendor/qti/hardware/servicetrackeraidl/IServicetracker;->bindService(Lvendor/qti/hardware/servicetrackeraidl/ServiceData;Lvendor/qti/hardware/servicetrackeraidl/ClientData;)V

    .line 146
    nop

    .line 282
    .end local v1    # "_arg0":Lvendor/qti/hardware/servicetrackeraidl/ServiceData;
    .end local v3    # "_arg1":Lvendor/qti/hardware/servicetrackeraidl/ClientData;
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
