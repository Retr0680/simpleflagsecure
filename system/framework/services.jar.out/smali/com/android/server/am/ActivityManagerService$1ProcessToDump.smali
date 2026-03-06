.class final Lcom/android/server/am/ActivityManagerService$1ProcessToDump;
.super Ljava/lang/Record;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessToDump"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "processName",
        "thread"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Landroid/app/IApplicationThread;
    }
.end annotation


# instance fields
.field private final processName:Ljava/lang/String;

.field private final thread:Landroid/app/IApplicationThread;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/IApplicationThread;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "thread"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processName",
            "thread"
        }
    .end annotation

    .line 17045
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 17045
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 17045
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService$1ProcessToDump$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public processName()Ljava/lang/String;
    .locals 1

    .line 17045
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public thread()Landroid/app/IApplicationThread;
    .locals 1

    .line 17045
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->thread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 17045
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/am/ActivityManagerService$1ProcessToDump;

    const-string/jumbo v2, "processName;thread"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
