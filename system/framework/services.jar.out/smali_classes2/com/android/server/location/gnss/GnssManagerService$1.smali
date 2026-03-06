.class Lcom/android/server/location/gnss/GnssManagerService$1;
.super Landroid/location/provider/IGnssAssistanceCallback$Stub;
.source "GnssManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssManagerService;->onRequestGnssAssistanceInject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$1;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-direct {p0}, Landroid/location/provider/IGnssAssistanceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 354
    const-string v0, "GnssManager"

    const-string v1, "GnssAssistanceCallback.onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public onResult(Landroid/location/GnssAssistance;)V
    .locals 2
    .param p1, "gnssAssistance"    # Landroid/location/GnssAssistance;

    .line 359
    const-string v0, "GnssManager"

    const-string v1, "GnssAssistanceCallback.onResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$1;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssManagerService;->-$$Nest$fgetmGnssNative(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectGnssAssistance(Landroid/location/GnssAssistance;)V

    .line 361
    return-void
.end method
