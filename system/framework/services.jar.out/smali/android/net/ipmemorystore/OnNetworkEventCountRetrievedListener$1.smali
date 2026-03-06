.class Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;
.super Landroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener$Stub;
.source "OnNetworkEventCountRetrievedListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;


# direct methods
.method constructor <init>(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "b24ee617afb80799cb35b6241f5847d786c649f3"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 48
    const/16 v0, 0xb

    return v0
.end method

.method public onNetworkEventCountRetrieved(Landroid/net/ipmemorystore/StatusParcelable;[I)V
    .locals 2
    .param p1, "statusParcelable"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "counts"    # [I

    .line 41
    iget-object v0, p0, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    new-instance v1, Landroid/net/ipmemorystore/Status;

    invoke-direct {v1, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {v0, v1, p2}, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->onNetworkEventCountRetrieved(Landroid/net/ipmemorystore/Status;[I)V

    .line 44
    :cond_0
    return-void
.end method
