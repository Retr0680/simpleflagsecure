.class Lcom/android/server/trust/TrustManagerService$2$1;
.super Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/trust/TrustManagerService$2;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/trust/TrustManagerService$2;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/trust/TrustManagerService$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {p0}, Landroid/hardware/location/ISignificantPlaceProviderManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setInSignificantPlace(Z)V
    .locals 1
    .param p1, "inSignificantPlace"    # Z

    .line 377
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2$1;->this$1:Lcom/android/server/trust/TrustManagerService$2;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fputmIsInSignificantPlace(Lcom/android/server/trust/TrustManagerService;Z)V

    .line 378
    return-void
.end method
