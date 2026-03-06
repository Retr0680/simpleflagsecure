.class public final synthetic Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    check-cast p2, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-static {p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->$r8$lambda$j4LJXTw6edBTK-za5okcRmvtqwc(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method
