.class public final synthetic Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:S

.field public final synthetic f$1:Landroid/hardware/location/NanoAppMessage;

.field public final synthetic f$2:Landroid/hardware/contexthub/IContextHub;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(SLandroid/hardware/location/NanoAppMessage;Landroid/hardware/contexthub/IContextHub;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->f$0:S

    iput-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/location/NanoAppMessage;

    iput-object p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/contexthub/IContextHub;

    iput p4, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-short v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->f$0:S

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/location/NanoAppMessage;

    iget-object v2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/contexthub/IContextHub;

    iget v3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->$r8$lambda$h6pTAwG0BsRGY9ERgLU9iNq6cc4(SLandroid/hardware/location/NanoAppMessage;Landroid/hardware/contexthub/IContextHub;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
