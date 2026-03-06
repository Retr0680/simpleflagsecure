.class Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;
.super Ljava/lang/Object;
.source "PreparedDictionaryGenerator.java"

# interfaces
.implements Lorg/brotli/enc/PreparedDictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/enc/PreparedDictionaryGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreparedDictionaryImpl"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;->data:Ljava/nio/ByteBuffer;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lorg/brotli/enc/PreparedDictionaryGenerator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method
