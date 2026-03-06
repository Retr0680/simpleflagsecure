.class final Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;
.super Ljava/lang/Record;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleKeyGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageObject"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "activeRule",
        "keyCode",
        "pressCount",
        "displayId",
        "metaState",
        "deviceId"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        I,
        I,
        I,
        I,
        I
    }
.end annotation


# instance fields
.field private final activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field private final deviceId:I

.field private final displayId:I

.field private final keyCode:I

.field private final metaState:I

.field private final pressCount:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

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
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    return-object v6
.end method

.method static bridge synthetic -$$Nest$fgetactiveRule(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceId(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdisplayId(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmetaState(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpressCount(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    return p0
.end method

.method private constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIIII)V
    .locals 0
    .param p1, "activeRule"    # Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .param p2, "keyCode"    # I
    .param p3, "pressCount"    # I
    .param p4, "displayId"    # I
    .param p5, "metaState"    # I
    .param p6, "deviceId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activeRule",
            "keyCode",
            "pressCount",
            "displayId",
            "metaState",
            "deviceId"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iput p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iput p4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iput p5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iput p6, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;)V
    .locals 7
    .param p1, "activeRule"    # Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .param p2, "keyCode"    # I
    .param p3, "pressCount"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 192
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 193
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    .line 192
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "activeRule":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .end local p2    # "keyCode":I
    .end local p3    # "pressCount":I
    .local v1, "activeRule":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .local v2, "keyCode":I
    .local v3, "pressCount":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIIII)V

    .line 194
    return-void
.end method


# virtual methods
.method public activeRule()Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return-object v0
.end method

.method public deviceId()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    return v0
.end method

.method public displayId()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 189
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static/range {v0 .. v5}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject$$ExternalSyntheticRecord0;->m(IIIIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public keyCode()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    return v0
.end method

.method public metaState()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    return v0
.end method

.method public pressCount()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    const-string v2, "activeRule;keyCode;pressCount;displayId;metaState;deviceId"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
