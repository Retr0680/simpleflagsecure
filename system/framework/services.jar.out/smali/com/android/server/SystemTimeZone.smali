.class public final Lcom/android/server/SystemTimeZone;
.super Ljava/lang/Object;
.source "SystemTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemTimeZone$TimeZoneConfidence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_TIME_ZONE_ID:Ljava/lang/String; = "GMT"

.field private static final TAG:Ljava/lang/String; = "SystemTimeZone"

.field public static final TIME_ZONE_CONFIDENCE_HIGH:I = 0x64

.field public static final TIME_ZONE_CONFIDENCE_LOW:I = 0x0

.field private static final TIME_ZONE_CONFIDENCE_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.timezone_confidence"

.field private static final TIME_ZONE_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final sTimeZoneDebugLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    sput-object v0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDebugLogEntry(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMsg"    # Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/PrintWriter;

    .line 195
    sget-object v0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 196
    return-void
.end method

.method public static getTimeZoneConfidence()I
    .locals 2

    .line 178
    const-string/jumbo v0, "persist.sys.timezone_confidence"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, "confidence":I
    invoke-static {v0}, Lcom/android/server/SystemTimeZone;->isValidTimeZoneConfidence(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :cond_0
    return v0
.end method

.method public static getTimeZoneId()Ljava/lang/String;
    .locals 1

    .line 188
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initializeTimeZoneSettingsIfRequired()V
    .locals 4

    .line 90
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "timezoneProperty":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/SystemTimeZone;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initializeTimeZoneSettingsIfRequired():persist.sys.timezone is not valid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "); setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "logInfo":Ljava/lang/String;
    const-string v3, "SystemTimeZone"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/server/SystemTimeZone;->setTimeZoneId(Ljava/lang/String;ILjava/lang/String;)Z

    .line 98
    .end local v1    # "logInfo":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static isValidTimeZoneConfidence(I)Z
    .locals 1
    .param p0, "confidence"    # I

    .line 199
    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidTimeZoneId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "timeZoneId"    # Ljava/lang/String;

    .line 203
    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0
.end method

.method private static setTimeZoneConfidence(I)Z
    .locals 3
    .param p0, "newConfidence"    # I

    .line 163
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneConfidence()I

    move-result v0

    .line 164
    .local v0, "currentConfidence":I
    if-eq v0, p0, :cond_0

    .line 165
    nop

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string/jumbo v2, "persist.sys.timezone_confidence"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x1

    return v1

    .line 173
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static setTimeZoneId(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p0, "timeZoneId"    # Ljava/lang/String;
    .param p1, "confidence"    # I
    .param p2, "logInfo"    # Ljava/lang/String;

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/SystemTimeZone;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_2

    .line 133
    :cond_1
    const/4 v0, 0x0

    .line 134
    .local v0, "timeZoneChanged":Z
    const-class v1, Lcom/android/server/SystemTimeZone;

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneId()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "currentTimeZoneId":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneConfidence()I

    move-result v3

    .line 137
    .local v3, "currentConfidence":I
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    goto :goto_0

    .line 154
    .end local v2    # "currentTimeZoneId":Ljava/lang/String;
    .end local v3    # "currentConfidence":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 138
    .restart local v2    # "currentTimeZoneId":Ljava/lang/String;
    .restart local v3    # "currentConfidence":I
    :goto_0
    const-string/jumbo v4, "persist.sys.timezone"

    invoke-static {v4, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    .line 144
    :cond_3
    invoke-static {p1}, Lcom/android/server/SystemTimeZone;->setTimeZoneConfidence(I)Z

    move-result v4

    .line 145
    .local v4, "timeZoneConfidenceChanged":Z
    if-nez v0, :cond_4

    if-eqz v4, :cond_5

    .line 146
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time zone or confidence set:  (new) timeZoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", (new) confidence="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", (old) timeZoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", (old) confidence="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", logInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "logMsg":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/SystemTimeZone;->addDebugLogEntry(Ljava/lang/String;)V

    .line 154
    .end local v2    # "currentTimeZoneId":Ljava/lang/String;
    .end local v3    # "currentConfidence":I
    .end local v4    # "timeZoneConfidenceChanged":Z
    .end local v5    # "logMsg":Ljava/lang/String;
    :cond_5
    monitor-exit v1

    .line 156
    return v0

    .line 154
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 126
    .end local v0    # "timeZoneChanged":Z
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTimeZoneId: Invalid time zone ID. timeZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemTimeZone;->addDebugLogEntry(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    return v0
.end method
