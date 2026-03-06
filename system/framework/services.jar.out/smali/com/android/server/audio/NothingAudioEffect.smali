.class public Lcom/android/server/audio/NothingAudioEffect;
.super Landroid/media/audiofx/AudioEffect;
.source "NothingAudioEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NothingAudioEffect"


# direct methods
.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "priority"    # I
    .param p3, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 16
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 17
    const-string v0, "NothingAudioEffect"

    const-string/jumbo v1, "new NothingAudioEffect"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public command_(I[B[B)I
    .locals 6
    .param p1, "cmdCode"    # I
    .param p2, "command"    # [B
    .param p3, "reply"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 30
    const-string v0, "command()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    .line 35
    .local v1, "ret":I
    const/4 v1, 0x0

    .line 36
    if-nez v1, :cond_1

    .line 37
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 38
    .local v2, "paramValue":[I
    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/NothingAudioEffect;->getParameter_(I[I)I

    move-result v1

    .line 40
    array-length v3, p3

    mul-int/lit8 v4, v1, 0x4

    if-ge v3, v4, :cond_0

    .line 41
    const/4 v3, -0x1

    return v3

    .line 43
    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 44
    .local v3, "bbOut":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 45
    aget v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "paramValue":[I
    .end local v3    # "bbOut":Ljava/nio/ByteBuffer;
    .end local v4    # "i":I
    :cond_1
    return v1
.end method

.method public getParameter_(I[I)I
    .locals 1
    .param p1, "param"    # I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v0

    return v0
.end method
