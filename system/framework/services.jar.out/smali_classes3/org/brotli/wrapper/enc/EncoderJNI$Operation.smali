.class final enum Lorg/brotli/wrapper/enc/EncoderJNI$Operation;
.super Ljava/lang/Enum;
.source "EncoderJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/wrapper/enc/EncoderJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/brotli/wrapper/enc/EncoderJNI$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

.field public static final enum FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

.field public static final enum FLUSH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

.field public static final enum PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;


# direct methods
.method private static synthetic $values()[Lorg/brotli/wrapper/enc/EncoderJNI$Operation;
    .locals 3

    .line 21
    sget-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    sget-object v1, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FLUSH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    sget-object v2, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    filled-new-array {v0, v1, v2}, [Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    const-string v1, "PROCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    .line 23
    new-instance v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    const-string v1, "FLUSH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FLUSH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    .line 24
    new-instance v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    const-string v1, "FINISH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    .line 21
    invoke-static {}, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->$values()[Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    move-result-object v0

    sput-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->$VALUES:[Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/brotli/wrapper/enc/EncoderJNI$Operation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    const-class v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    return-object v0
.end method

.method public static values()[Lorg/brotli/wrapper/enc/EncoderJNI$Operation;
    .locals 1

    .line 21
    sget-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->$VALUES:[Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {v0}, [Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    return-object v0
.end method
