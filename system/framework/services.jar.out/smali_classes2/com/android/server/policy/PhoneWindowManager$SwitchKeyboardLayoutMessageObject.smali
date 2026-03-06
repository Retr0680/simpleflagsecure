.class final Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;
.super Ljava/lang/Record;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchKeyboardLayoutMessageObject"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "displayId",
        "focusedToken",
        "direction"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Landroid/os/IBinder;,
        I
    }
.end annotation


# instance fields
.field private final direction:I

.field private final displayId:I

.field private final focusedToken:Landroid/os/IBinder;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    iget v1, p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    iget v1, p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

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
    .locals 5

    .line 0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method

.method static bridge synthetic -$$Nest$fgetdirection(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdisplayId(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfocusedToken(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    return-object p0
.end method

.method private constructor <init>(ILandroid/os/IBinder;I)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "focusedToken"    # Landroid/os/IBinder;
    .param p3, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "displayId",
            "focusedToken",
            "direction"
        }
    .end annotation

    .line 1101
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/IBinder;ILcom/android/server/policy/PhoneWindowManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;-><init>(ILandroid/os/IBinder;I)V

    return-void
.end method


# virtual methods
.method public direction()I
    .locals 1

    .line 1101
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    return v0
.end method

.method public displayId()I
    .locals 1

    .line 1101
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1101
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public focusedToken()Landroid/os/IBinder;
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1101
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest$$ExternalSyntheticRecord0;->m(IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1101
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    const-string v2, "displayId;focusedToken;direction"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
