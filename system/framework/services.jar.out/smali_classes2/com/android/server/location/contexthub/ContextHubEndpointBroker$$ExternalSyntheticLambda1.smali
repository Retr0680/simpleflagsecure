.class public final synthetic Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/hardware/contexthub/HubEndpointInfo;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/contexthub/HubEndpointInfo;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 3

    .line 0
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->$r8$lambda$7jQ2OuD3AqF04vtbBmMuuxwpJzk(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V

    return-void
.end method
