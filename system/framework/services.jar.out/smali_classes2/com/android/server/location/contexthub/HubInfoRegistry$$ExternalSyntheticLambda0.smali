.class public final synthetic Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:B


# direct methods
.method public synthetic constructor <init>(B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;->f$0:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-byte v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;->f$0:B

    check-cast p1, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    check-cast p2, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->$r8$lambda$QBoBT60ZQptf3kjxWZuPTaT2sc8(BLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method
