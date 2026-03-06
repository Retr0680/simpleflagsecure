.class public Lorg/tukaani/xz/ArrayCache;
.super Ljava/lang/Object;
.source "ArrayCache.java"


# static fields
.field private static volatile defaultCache:Lorg/tukaani/xz/ArrayCache;

.field private static final dummyCache:Lorg/tukaani/xz/ArrayCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lorg/tukaani/xz/ArrayCache;

    invoke-direct {v0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    sput-object v0, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    .line 77
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    sput-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCache()Lorg/tukaani/xz/ArrayCache;
    .locals 1

    .line 95
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-object v0
.end method

.method public static getDummyCache()Lorg/tukaani/xz/ArrayCache;
    .locals 1

    .line 84
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    return-object v0
.end method

.method public static setDefaultCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p0, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 105
    if-eqz p0, :cond_0

    .line 109
    sput-object p0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    .line 110
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .locals 1
    .param p1, "size"    # I
    .param p2, "fillWithZeros"    # Z

    .line 135
    new-array v0, p1, [B

    return-object v0
.end method

.method public getIntArray(IZ)[I
    .locals 1
    .param p1, "size"    # I
    .param p2, "fillWithZeros"    # Z

    .line 162
    new-array v0, p1, [I

    return-object v0
.end method

.method public putArray([B)V
    .locals 0
    .param p1, "array"    # [B

    .line 144
    return-void
.end method

.method public putArray([I)V
    .locals 0
    .param p1, "array"    # [I

    .line 171
    return-void
.end method
