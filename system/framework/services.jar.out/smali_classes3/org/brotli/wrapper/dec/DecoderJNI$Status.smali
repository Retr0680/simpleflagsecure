.class public final enum Lorg/brotli/wrapper/dec/DecoderJNI$Status;
.super Ljava/lang/Enum;
.source "DecoderJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/wrapper/dec/DecoderJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/brotli/wrapper/dec/DecoderJNI$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/brotli/wrapper/dec/DecoderJNI$Status;

.field public static final enum DONE:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

.field public static final enum ERROR:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

.field public static final enum NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

.field public static final enum NEEDS_MORE_OUTPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

.field public static final enum OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;


# direct methods
.method private static synthetic $values()[Lorg/brotli/wrapper/dec/DecoderJNI$Status;
    .locals 5

    .line 21
    sget-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->ERROR:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v1, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->DONE:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v3, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_OUTPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v4, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/brotli/wrapper/dec/DecoderJNI$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->ERROR:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    .line 23
    new-instance v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    const-string v1, "DONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/brotli/wrapper/dec/DecoderJNI$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->DONE:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    .line 24
    new-instance v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    const-string v1, "NEEDS_MORE_INPUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/brotli/wrapper/dec/DecoderJNI$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    .line 25
    new-instance v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    const-string v1, "NEEDS_MORE_OUTPUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/brotli/wrapper/dec/DecoderJNI$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_OUTPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    .line 26
    new-instance v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    const-string v1, "OK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/brotli/wrapper/dec/DecoderJNI$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    .line 21
    invoke-static {}, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->$values()[Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    move-result-object v0

    sput-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->$VALUES:[Lorg/brotli/wrapper/dec/DecoderJNI$Status;

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

.method public static valueOf(Ljava/lang/String;)Lorg/brotli/wrapper/dec/DecoderJNI$Status;
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
    const-class v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    return-object v0
.end method

.method public static values()[Lorg/brotli/wrapper/dec/DecoderJNI$Status;
    .locals 1

    .line 21
    sget-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->$VALUES:[Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    invoke-virtual {v0}, [Lorg/brotli/wrapper/dec/DecoderJNI$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    return-object v0
.end method
