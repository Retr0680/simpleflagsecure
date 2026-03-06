.class Lcom/android/server/location/fudger/LocationFudgerCache$2;
.super Landroid/location/provider/IS2CellIdsCallback$Stub;
.source "LocationFudgerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/fudger/LocationFudgerCache;->refreshCache(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/location/fudger/LocationFudgerCache;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/fudger/LocationFudgerCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    iput-wide p2, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->val$startTime:J

    invoke-direct {p0}, Landroid/location/provider/IS2CellIdsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 4

    .line 238
    invoke-static {}, Lcom/android/server/location/fudger/LocationFudgerCache;->-$$Nest$sfgetsTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "could not get population density"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->val$startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 240
    .local v0, "durationMs":I
    const/16 v1, 0x3ec

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    .line 244
    return-void
.end method

.method public onResult([J)V
    .locals 4
    .param p1, "s2CellIds"    # [J

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->val$startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 229
    .local v0, "durationMs":I
    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    .line 233
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudgerCache$2;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-virtual {v1, p1}, Lcom/android/server/location/fudger/LocationFudgerCache;->addToCache([J)V

    .line 234
    return-void
.end method
