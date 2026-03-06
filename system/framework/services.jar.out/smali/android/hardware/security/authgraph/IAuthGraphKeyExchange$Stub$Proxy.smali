.class Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAuthGraphKeyExchange.java"

# interfaces
.implements Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mCachedVersion:I

    .line 214
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 211
    iput-object p1, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 212
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public authenticationComplete(Landroid/hardware/security/authgraph/SessionIdSignature;[Landroid/hardware/security/authgraph/Arc;)[Landroid/hardware/security/authgraph/Arc;
    .locals 6
    .param p1, "peerSignature"    # Landroid/hardware/security/authgraph/SessionIdSignature;
    .param p2, "sharedKeys"    # [Landroid/hardware/security/authgraph/Arc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    const/4 v3, 0x2

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-virtual {v0, p2, v2, v4}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 302
    iget-object v4, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 303
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 307
    const-class v4, [Landroid/hardware/security/authgraph/Arc;

    sget-object v5, Landroid/hardware/security/authgraph/Arc;->CREATOR:Landroid/os/Parcelable$Creator;

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;Landroid/os/Parcelable$Creator;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/authgraph/Arc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v2    # "_status":Z
    .local v3, "_result":[Landroid/hardware/security/authgraph/Arc;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    nop

    .line 313
    return-object v3

    .line 310
    .end local v3    # "_result":[Landroid/hardware/security/authgraph/Arc;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 304
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method authenticationComplete is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    .end local p1    # "peerSignature":Landroid/hardware/security/authgraph/SessionIdSignature;
    .end local p2    # "sharedKeys":[Landroid/hardware/security/authgraph/Arc;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    .restart local p1    # "peerSignature":Landroid/hardware/security/authgraph/SessionIdSignature;
    .restart local p2    # "sharedKeys":[Landroid/hardware/security/authgraph/Arc;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    throw v2
.end method

.method public create()Landroid/hardware/security/authgraph/SessionInitiationInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 231
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 235
    sget-object v3, Landroid/hardware/security/authgraph/SessionInitiationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/authgraph/SessionInitiationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/hardware/security/authgraph/SessionInitiationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    nop

    .line 241
    return-object v3

    .line 238
    .end local v3    # "_result":Landroid/hardware/security/authgraph/SessionInitiationInfo;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 232
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method create is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    throw v2
.end method

.method public finish(Landroid/hardware/security/authgraph/PubKey;Landroid/hardware/security/authgraph/Identity;Landroid/hardware/security/authgraph/SessionIdSignature;[BILandroid/hardware/security/authgraph/Key;)Landroid/hardware/security/authgraph/SessionInfo;
    .locals 5
    .param p1, "peerPubKey"    # Landroid/hardware/security/authgraph/PubKey;
    .param p2, "peerId"    # Landroid/hardware/security/authgraph/Identity;
    .param p3, "peerSignature"    # Landroid/hardware/security/authgraph/SessionIdSignature;
    .param p4, "peerNonce"    # [B
    .param p5, "peerVersion"    # I
    .param p6, "ownKey"    # Landroid/hardware/security/authgraph/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 275
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 276
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 277
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 278
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 280
    iget-object v3, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 281
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 285
    sget-object v3, Landroid/hardware/security/authgraph/SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/authgraph/SessionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/hardware/security/authgraph/SessionInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    nop

    .line 291
    return-object v3

    .line 288
    .end local v3    # "_result":Landroid/hardware/security/authgraph/SessionInfo;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 282
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method finish is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    .end local p1    # "peerPubKey":Landroid/hardware/security/authgraph/PubKey;
    .end local p2    # "peerId":Landroid/hardware/security/authgraph/Identity;
    .end local p3    # "peerSignature":Landroid/hardware/security/authgraph/SessionIdSignature;
    .end local p4    # "peerNonce":[B
    .end local p5    # "peerVersion":I
    .end local p6    # "ownKey":Landroid/hardware/security/authgraph/Key;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    .restart local p1    # "peerPubKey":Landroid/hardware/security/authgraph/PubKey;
    .restart local p2    # "peerId":Landroid/hardware/security/authgraph/Identity;
    .restart local p3    # "peerSignature":Landroid/hardware/security/authgraph/SessionIdSignature;
    .restart local p4    # "peerNonce":[B
    .restart local p5    # "peerVersion":I
    .restart local p6    # "ownKey":Landroid/hardware/security/authgraph/Key;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 221
    sget-object v0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 340
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    goto :goto_0

    .line 333
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 343
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v1    # "reply":Landroid/os/Parcel;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    throw v2

    .line 347
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 333
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget v0, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 319
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 321
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 323
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    goto :goto_0

    .line 326
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    throw v2

    .line 330
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public init(Landroid/hardware/security/authgraph/PubKey;Landroid/hardware/security/authgraph/Identity;[BI)Landroid/hardware/security/authgraph/KeInitResult;
    .locals 5
    .param p1, "peerPubKey"    # Landroid/hardware/security/authgraph/PubKey;
    .param p2, "peerId"    # Landroid/hardware/security/authgraph/Identity;
    .param p3, "peerNonce"    # [B
    .param p4, "peerVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 252
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 253
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v3, p0, Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 255
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 259
    sget-object v3, Landroid/hardware/security/authgraph/KeInitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/authgraph/KeInitResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/hardware/security/authgraph/KeInitResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    nop

    .line 265
    return-object v3

    .line 262
    .end local v3    # "_result":Landroid/hardware/security/authgraph/KeInitResult;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 256
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method init is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    .end local p1    # "peerPubKey":Landroid/hardware/security/authgraph/PubKey;
    .end local p2    # "peerId":Landroid/hardware/security/authgraph/Identity;
    .end local p3    # "peerNonce":[B
    .end local p4    # "peerVersion":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/authgraph/IAuthGraphKeyExchange$Stub$Proxy;
    .restart local p1    # "peerPubKey":Landroid/hardware/security/authgraph/PubKey;
    .restart local p2    # "peerId":Landroid/hardware/security/authgraph/Identity;
    .restart local p3    # "peerNonce":[B
    .restart local p4    # "peerVersion":I
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    throw v2
.end method
