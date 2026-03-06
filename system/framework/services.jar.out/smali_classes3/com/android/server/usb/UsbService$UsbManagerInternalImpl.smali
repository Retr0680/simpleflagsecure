.class Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;
.super Landroid/hardware/usb/IUsbManagerInternal$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbManagerInternalImpl"
.end annotation


# static fields
.field private static final sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1562
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1561
    iput-object p1, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/hardware/usb/IUsbManagerInternal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enableUsbDataSignal(ZI)Z
    .locals 12
    .param p1, "enable"    # Z
    .param p2, "disableReason"    # I

    .line 1567
    const/4 v0, 0x1

    .line 1568
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    add-int v5, v1, p2

    .line 1569
    .local v5, "operationId":I
    iget-object v1, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v1}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmPortManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbPortManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v1

    array-length v9, v1

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v1, v10

    .line 1570
    .local v11, "port":Landroid/hardware/usb/UsbPort;
    iget-object v2, p0, Lcom/android/server/usb/UsbService$UsbManagerInternalImpl;->this$0:Lcom/android/server/usb/UsbService;

    invoke-virtual {v11}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/hardware/usb/IUsbOperationInternal$Default;

    invoke-direct {v6}, Landroid/hardware/usb/IUsbOperationInternal$Default;-><init>()V

    const/4 v8, 0x1

    move v4, p1

    move v7, p2

    .end local p1    # "enable":Z
    .end local p2    # "disableReason":I
    .local v4, "enable":Z
    .local v7, "disableReason":I
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usb/UsbService;->enableUsbDataInternal(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;IZ)Z

    move-result p1

    .line 1572
    .local p1, "success":Z
    if-nez p1, :cond_0

    .line 1573
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbDataInternal failed to change USB port "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1573
    const-string v2, "UsbService"

    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_0
    and-int/2addr v0, p1

    .line 1569
    .end local v11    # "port":Landroid/hardware/usb/UsbPort;
    .end local p1    # "success":Z
    add-int/lit8 v10, v10, 0x1

    move p1, v4

    move p2, v7

    goto :goto_0

    .line 1578
    .end local v4    # "enable":Z
    .end local v7    # "disableReason":I
    .local p1, "enable":Z
    .restart local p2    # "disableReason":I
    :cond_1
    return v0
.end method
