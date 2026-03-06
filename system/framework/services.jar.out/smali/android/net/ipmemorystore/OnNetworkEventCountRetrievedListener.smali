.class public interface abstract Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;
.super Ljava/lang/Object;
.source "OnNetworkEventCountRetrievedListener.java"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener;
    .locals 1
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    .line 35
    new-instance v0, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;-><init>(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onNetworkEventCountRetrieved(Landroid/net/ipmemorystore/Status;[I)V
.end method
