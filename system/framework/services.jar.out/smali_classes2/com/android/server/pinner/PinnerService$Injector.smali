.class public Lcom/android/server/pinner/PinnerService$Injector;
.super Ljava/lang/Object;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pinner/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDeviceConfigInterface()Landroid/provider/DeviceConfigInterface;
    .locals 1

    .line 226
    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-object v0
.end method

.method protected pinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .locals 1
    .param p1, "service"    # Lcom/android/server/pinner/PinnerService;
    .param p2, "fileToPin"    # Ljava/lang/String;
    .param p3, "maxBytesToPin"    # J
    .param p5, "attemptPinIntrospection"    # Z

    .line 235
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mpinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object v0

    return-object v0
.end method

.method protected publishBinderService(Lcom/android/server/pinner/PinnerService;Landroid/os/Binder;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/pinner/PinnerService;
    .param p2, "binderService"    # Landroid/os/Binder;

    .line 230
    const-string/jumbo v0, "pinner"

    invoke-static {p1, v0, p2}, Lcom/android/server/pinner/PinnerService;->access$000(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    return-void
.end method
