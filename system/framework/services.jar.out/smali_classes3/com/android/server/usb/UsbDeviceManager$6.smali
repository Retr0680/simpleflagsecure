.class Lcom/android/server/usb/UsbDeviceManager$6;
.super Ljava/lang/Thread;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbPermissionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$6;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$6;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "sys.usb.controller"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mnativeWaitAndGetProperty(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "udcName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$6;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mnativeStartGadgetMonitor(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    .line 472
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$6;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fputmUdcName(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB controller name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method
