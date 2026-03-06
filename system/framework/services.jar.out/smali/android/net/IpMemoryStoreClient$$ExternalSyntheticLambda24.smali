.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[J

.field public final synthetic f$3:[I

.field public final synthetic f$4:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$2:[J

    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$3:[I

    iput-object p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$4:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$2:[J

    iget-object v3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$3:[I

    iget-object v4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;->f$4:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    move-object v5, p1

    check-cast v5, Landroid/net/IIpMemoryStore;

    invoke-static/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$XYZsuAt7vHRidyIn_z64I1F9I0g(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
