.class Lcom/android/server/pinner/PinnerService$2;
.super Ljava/lang/Object;
.source "PinnerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pinner/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pinner/PinnerService;


# direct methods
.method constructor <init>(Lcom/android/server/pinner/PinnerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pinner/PinnerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$2;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 215
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "runtime_native"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "pin_shared_anon_size"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService$2;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mrefreshPinAnonConfig(Lcom/android/server/pinner/PinnerService;)V

    .line 219
    :cond_0
    return-void
.end method
