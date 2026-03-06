.class public abstract Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub;
.super Landroid/os/Binder;
.source "IAuthGraphKeyExchange.java"

# interfaces
.implements Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticationComplete:I = 0x4

.field static final TRANSACTION_create:I = 0x1

.field static final TRANSACTION_finish:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_init:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 61
    sget-object v0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    sget-object v0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    sparse-switch p0, :sswitch_data_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 105
    :sswitch_0
    const-string/jumbo v0, "getInterfaceVersion"

    return-object v0

    .line 109
    :sswitch_1
    const-string/jumbo v0, "getInterfaceHash"

    return-object v0

    .line 101
    :sswitch_2
    const-string v0, "authenticationComplete"

    return-object v0

    .line 97
    :sswitch_3
    const-string v0, "finish"

    return-object v0

    .line 93
    :sswitch_4
    const-string/jumbo v0, "init"

    return-object v0

    .line 89
    :sswitch_5
    const-string v0, "create"

    return-object v0

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

    .line 80
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 359
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 124
    sget-object v0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v2

    .line 132
    :cond_1
    if-ne p1, v1, :cond_2

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-interface {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return v2

    .line 137
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-interface {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v2

    .line 142
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 190
    :pswitch_0
    sget-object v1, Landroid/hardware/security/authgraph/SessionIdSignature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/authgraph/SessionIdSignature;

    .line 192
    .local v1, "_arg0":Landroid/hardware/security/authgraph/SessionIdSignature;
    const-class v3, [Landroid/hardware/security/authgraph/Arc;

    sget-object v4, Landroid/hardware/security/authgraph/Arc;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v5, 0x2

    filled-new-array {v5}, [I

    move-result-object v6

    invoke-virtual {p2, v3, v4, v6}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;Landroid/os/Parcelable$Creator;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/authgraph/Arc;

    .line 193
    .local v3, "_arg1":[Landroid/hardware/security/authgraph/Arc;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-interface {p0, v1, v3}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->authenticationComplete(Landroid/hardware/security/authgraph/SessionIdSignature;[Landroid/hardware/security/authgraph/Arc;)[Landroid/hardware/security/authgraph/Arc;

    move-result-object v4

    .line 195
    .local v4, "_result":[Landroid/hardware/security/authgraph/Arc;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {p3, v4, v2, v5}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 197
    move-object v3, p0

    goto :goto_0

    .line 170
    .end local v1    # "_arg0":Landroid/hardware/security/authgraph/SessionIdSignature;
    .end local v3    # "_arg1":[Landroid/hardware/security/authgraph/Arc;
    .end local v4    # "_result":[Landroid/hardware/security/authgraph/Arc;
    :pswitch_1
    sget-object v1, Landroid/hardware/security/authgraph/PubKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/security/authgraph/PubKey;

    .line 172
    .local v4, "_arg0":Landroid/hardware/security/authgraph/PubKey;
    sget-object v1, Landroid/hardware/security/authgraph/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/security/authgraph/Identity;

    .line 174
    .local v5, "_arg1":Landroid/hardware/security/authgraph/Identity;
    sget-object v1, Landroid/hardware/security/authgraph/SessionIdSignature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/hardware/security/authgraph/SessionIdSignature;

    .line 176
    .local v6, "_arg2":Landroid/hardware/security/authgraph/SessionIdSignature;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 178
    .local v7, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 180
    .local v8, "_arg4":I
    sget-object v1, Landroid/hardware/security/authgraph/Key;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/hardware/security/authgraph/Key;

    .line 181
    .local v9, "_arg5":Landroid/hardware/security/authgraph/Key;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    move-object v3, p0

    invoke-interface/range {v3 .. v9}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->finish(Landroid/hardware/security/authgraph/PubKey;Landroid/hardware/security/authgraph/Identity;Landroid/hardware/security/authgraph/SessionIdSignature;[BILandroid/hardware/security/authgraph/Key;)Landroid/hardware/security/authgraph/SessionInfo;

    move-result-object v1

    .line 183
    .local v1, "_result":Landroid/hardware/security/authgraph/SessionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 185
    goto :goto_0

    .line 154
    .end local v1    # "_result":Landroid/hardware/security/authgraph/SessionInfo;
    .end local v4    # "_arg0":Landroid/hardware/security/authgraph/PubKey;
    .end local v5    # "_arg1":Landroid/hardware/security/authgraph/Identity;
    .end local v6    # "_arg2":Landroid/hardware/security/authgraph/SessionIdSignature;
    .end local v7    # "_arg3":[B
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Landroid/hardware/security/authgraph/Key;
    :pswitch_2
    move-object v3, p0

    sget-object v1, Landroid/hardware/security/authgraph/PubKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/authgraph/PubKey;

    .line 156
    .local v1, "_arg0":Landroid/hardware/security/authgraph/PubKey;
    sget-object v4, Landroid/hardware/security/authgraph/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/security/authgraph/Identity;

    .line 158
    .local v4, "_arg1":Landroid/hardware/security/authgraph/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 160
    .local v5, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 161
    .local v6, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-interface {p0, v1, v4, v5, v6}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->init(Landroid/hardware/security/authgraph/PubKey;Landroid/hardware/security/authgraph/Identity;[BI)Landroid/hardware/security/authgraph/KeInitResult;

    move-result-object v7

    .line 163
    .local v7, "_result":Landroid/hardware/security/authgraph/KeInitResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_0

    .line 146
    .end local v1    # "_arg0":Landroid/hardware/security/authgraph/PubKey;
    .end local v4    # "_arg1":Landroid/hardware/security/authgraph/Identity;
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v7    # "_result":Landroid/hardware/security/authgraph/KeInitResult;
    :pswitch_3
    move-object v3, p0

    invoke-interface {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->create()Landroid/hardware/security/authgraph/SessionInitiationInfo;

    move-result-object v1

    .line 147
    .local v1, "_result":Landroid/hardware/security/authgraph/SessionInitiationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 149
    nop

    .line 204
    .end local v1    # "_result":Landroid/hardware/security/authgraph/SessionInitiationInfo;
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
