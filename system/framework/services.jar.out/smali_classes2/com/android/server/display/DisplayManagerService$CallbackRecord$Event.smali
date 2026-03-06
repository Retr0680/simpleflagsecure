.class final Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;
.super Ljava/lang/Record;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Event"
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
        "displayId",
        "event"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field private final displayId:I

.field private final event:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    iget v1, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    iget p1, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    .line 0
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method static bridge synthetic -$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    return p0
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayId",
            "event"
        }
    .end annotation

    .line 4337
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/display/DisplayManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;-><init>(II)V

    return-void
.end method


# virtual methods
.method public displayId()I
    .locals 1

    .line 4337
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 4337
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public event()I
    .locals 1

    .line 4337
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 4337
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->displayId:I

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->event:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event$$ExternalSyntheticRecord0;->m(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4337
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    const-string v2, "displayId;event"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
