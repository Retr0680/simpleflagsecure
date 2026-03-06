.class public Lorg/brotli/wrapper/dec/DecoderJNI;
.super Ljava/lang/Object;
.source "DecoderJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;,
        Lorg/brotli/wrapper/dec/DecoderJNI$Status;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smnativeCreate([J)Ljava/nio/ByteBuffer;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/brotli/wrapper/dec/DecoderJNI;->nativeCreate([J)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeDestroy([J)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/brotli/wrapper/dec/DecoderJNI;->nativeDestroy([J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativePull([J)Ljava/nio/ByteBuffer;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/brotli/wrapper/dec/DecoderJNI;->nativePull([J)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativePush([JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/brotli/wrapper/dec/DecoderJNI;->nativePush([JI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeCreate([J)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeDestroy([J)V
.end method

.method private static native nativePull([J)Ljava/nio/ByteBuffer;
.end method

.method private static native nativePush([JI)V
.end method
