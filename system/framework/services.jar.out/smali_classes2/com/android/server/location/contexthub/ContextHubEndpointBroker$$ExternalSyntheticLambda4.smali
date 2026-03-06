.class public final synthetic Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:B


# direct methods
.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;->f$0:I

    iput-byte p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;->f$1:B

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 2

    .line 0
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;->f$0:I

    iget-byte v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;->f$1:B

    invoke-static {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->$r8$lambda$0MnjOblYAsLSXxetld0kGl6KqD4(IBLandroid/hardware/contexthub/IContextHubEndpointCallback;)V

    return-void
.end method
