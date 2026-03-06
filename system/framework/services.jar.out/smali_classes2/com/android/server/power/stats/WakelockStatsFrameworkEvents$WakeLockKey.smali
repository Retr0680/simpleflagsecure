.class Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLockKey"
.end annotation


# instance fields
.field private hashCode:I

.field private powerManagerWakeLockLevel:I

.field private tag:Ljava/lang/String;

.field private uid:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "powerManagerWakeLockLevel"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p2, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->hashCode:I

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 99
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    if-nez v2, :cond_2

    :cond_1
    goto :goto_1

    .line 101
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 102
    .local v2, "that":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    iget v3, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    iget v4, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    nop

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    iget v4, v2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 102
    :goto_0
    return v0

    .line 99
    .end local v2    # "that":Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;
    :goto_1
    return v1
.end method

.method getPowerManagerWakeLockLevel()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    return v0
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    return-object v0
.end method

.method getUid()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->hashCode:I

    return v0
.end method

.method setHardCap()V
    .locals 3

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    .line 91
    const-string v0, "*overflow hard cap*"

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    .line 93
    iget v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->hashCode:I

    .line 94
    return-void
.end method

.method setOverflow()V
    .locals 3

    .line 84
    const-string v0, "*overflow*"

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    .line 86
    iget v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->tag:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->powerManagerWakeLockLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->hashCode:I

    .line 87
    return-void
.end method
