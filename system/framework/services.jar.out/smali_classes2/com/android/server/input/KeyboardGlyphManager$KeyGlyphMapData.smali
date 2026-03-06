.class final Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;
.super Ljava/lang/Record;
.source "KeyboardGlyphManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/KeyboardGlyphManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyGlyphMapData"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
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
        {}
    }
    componentNames = {
        "packageName",
        "receiverName",
        "resourceId",
        "vendorId",
        "productId"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Ljava/lang/String;,
        I,
        I,
        I
    }
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final productId:I

.field private final receiverName:Ljava/lang/String;

.field private final resourceId:I

.field private final vendorId:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    iget v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    iget v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    iget v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

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
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    return-object v5
.end method

.method static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproductId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetreceiverName(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourceId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvendorId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    return p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "receiverName"    # Ljava/lang/String;
    .param p3, "resourceId"    # I
    .param p4, "vendorId"    # I
    .param p5, "productId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "receiverName",
            "resourceId",
            "vendorId",
            "productId"
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    iput p4, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    iput p5, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILcom/android/server/input/KeyboardGlyphManager-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 381
    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    iget v1, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    iget v2, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    iget-object v3, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData$$ExternalSyntheticRecord0;->m(IIILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public productId()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    return v0
.end method

.method public receiverName()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    return-object v0
.end method

.method public resourceId()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 381
    invoke-direct {p0}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    const-string/jumbo v2, "packageName;receiverName;resourceId;vendorId;productId"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vendorId()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    return v0
.end method
