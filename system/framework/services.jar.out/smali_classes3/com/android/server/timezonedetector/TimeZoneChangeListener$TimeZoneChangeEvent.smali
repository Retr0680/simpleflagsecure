.class public Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
.super Ljava/lang/Object;
.source "TimeZoneChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/TimeZoneChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneChangeEvent"
.end annotation


# instance fields
.field private final mCause:Ljava/lang/String;

.field private final mElapsedRealtimeMillis:J

.field private final mNewConfidence:I

.field private final mNewZoneId:Ljava/lang/String;

.field private final mOldZoneId:Ljava/lang/String;

.field private final mOrigin:I

.field private final mUnixEpochTimeMillis:J

.field private final mUserId:I


# direct methods
.method public constructor <init>(JJIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "elapsedRealtimeMillis"    # J
    .param p3, "unixEpochTimeMillis"    # J
    .param p5, "origin"    # I
    .param p6, "userId"    # I
    .param p7, "oldZoneId"    # Ljava/lang/String;
    .param p8, "newZoneId"    # Ljava/lang/String;
    .param p9, "newConfidence"    # I
    .param p10, "cause"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    .line 54
    iput-wide p3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    .line 55
    iput p5, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    .line 56
    iput p6, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    .line 57
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    .line 58
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    .line 59
    iput p9, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    .line 60
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p10, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    instance-of v1, p1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    .line 112
    .local v1, "that":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    iget-wide v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    iget-wide v5, v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    iget-wide v5, v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    iget v4, v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    iget v4, v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    .line 116
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    .line 117
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    iget v4, v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 112
    :goto_0
    return v0

    .line 121
    .end local v1    # "that":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    :cond_2
    return v2
.end method

.method public getElapsedRealtimeMillis()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    return-wide v0
.end method

.method public getNewZoneId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldZoneId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    return v0
.end method

.method public getUnixEpochTimeMillis()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 10

    .line 126
    iget-wide v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneChangeEvent{mElapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mElapsedRealtimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUnixEpochTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUnixEpochTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOldZoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mOldZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNewZoneId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewZoneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNewConfidence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mNewConfidence:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCause=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->mCause:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
