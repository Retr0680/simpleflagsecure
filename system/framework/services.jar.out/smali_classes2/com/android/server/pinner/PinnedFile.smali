.class public final Lcom/android/server/pinner/PinnedFile;
.super Ljava/lang/Object;
.source "PinnedFile.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final bytesPinned:J

.field final fileName:Ljava/lang/String;

.field groupName:Ljava/lang/String;

.field private mAddress:J

.field final mapSize:J

.field pinnedDeps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pinner/PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field used_pinlist:Z


# direct methods
.method public constructor <init>(JJLjava/lang/String;J)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "mapSize"    # J
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "bytesPinned"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    .line 38
    iput-wide p1, p0, Lcom/android/server/pinner/PinnedFile;->mAddress:J

    .line 39
    iput-wide p3, p0, Lcom/android/server/pinner/PinnedFile;->mapSize:J

    .line 40
    iput-object p5, p0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    .line 41
    iput-wide p6, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 46
    iget-wide v0, p0, Lcom/android/server/pinner/PinnedFile;->mAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 47
    iget-wide v0, p0, Lcom/android/server/pinner/PinnedFile;->mAddress:J

    iget-wide v2, p0, Lcom/android/server/pinner/PinnedFile;->mapSize:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pinner/PinnedFile;->mAddress:J

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pinner/PinnedFile;

    .line 51
    .local v1, "dep":Lcom/android/server/pinner/PinnedFile;
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Lcom/android/server/pinner/PinnedFile;->close()V

    .line 54
    .end local v1    # "dep":Lcom/android/server/pinner/PinnedFile;
    :cond_1
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnedFile;->close()V

    .line 60
    return-void
.end method
