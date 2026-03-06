.class public Lcom/android/server/biometrics/AuthenticationStatsPersister;
.super Ljava/lang/Object;
.source "AuthenticationStatsPersister.java"


# static fields
.field private static final ENROLLMENT_NOTIFICATIONS:Ljava/lang/String; = "enrollment_notifications"

.field private static final FACE_ATTEMPTS:Ljava/lang/String; = "face_attempts"

.field private static final FACE_LAST_ENROLL_TIME:Ljava/lang/String; = "face_last_enroll_time"

.field private static final FACE_LAST_FRR_NOTIFICATION_TIME:Ljava/lang/String; = "face_last_notification_time"

.field private static final FACE_REJECTIONS:Ljava/lang/String; = "face_rejections"

.field private static final FILE_NAME:Ljava/lang/String; = "authentication_stats"

.field private static final FINGERPRINT_ATTEMPTS:Ljava/lang/String; = "fingerprint_attempts"

.field private static final FINGERPRINT_LAST_ENROLL_TIME:Ljava/lang/String; = "fingerprint_last_enroll_time"

.field private static final FINGERPRINT_LAST_FRR_NOTIFICATION_TIME:Ljava/lang/String; = "fingerprint_last_notification_time"

.field private static final FINGERPRINT_REJECTIONS:Ljava/lang/String; = "fingerprint_rejections"

.field private static final KEY:Ljava/lang/String; = "frr_stats"

.field private static final TAG:Ljava/lang/String; = "AuthenticationStatsPersister"

.field private static final THRESHOLD_KEY:Ljava/lang/String; = "frr_threshold"

.field private static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "authentication_stats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v0, "prefsFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 70
    return-void
.end method

.method private buildFrrStats(Lorg/json/JSONObject;IIIJJI)Ljava/lang/String;
    .locals 3
    .param p1, "frrStats"    # Lorg/json/JSONObject;
    .param p2, "totalAttempts"    # I
    .param p3, "rejectedAttempts"    # I
    .param p4, "enrollmentNotifications"    # I
    .param p5, "lastEnrollmentTime"    # J
    .param p7, "lastFrrNotificationTime"    # J
    .param p9, "modality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x4

    const-string v1, "enrollment_notifications"

    if-ne p9, v0, :cond_0

    .line 201
    nop

    .line 202
    const-string v0, "face_attempts"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    const-string v2, "face_rejections"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 205
    const-string v1, "face_last_enroll_time"

    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 206
    const-string v1, "face_last_notification_time"

    invoke-virtual {v0, v1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    return-object v0

    .line 208
    :cond_0
    const/4 v0, 0x1

    if-ne p9, v0, :cond_1

    .line 209
    nop

    .line 210
    const-string v0, "fingerprint_attempts"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 211
    const-string v2, "fingerprint_rejections"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 213
    const-string v1, "fingerprint_last_enroll_time"

    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 214
    const-string v1, "fingerprint_last_notification_time"

    invoke-virtual {v0, v1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    return-object v0

    .line 217
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    return v0
.end method

.method private getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 235
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLongValue(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 240
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p3

    :goto_0
    return-wide v0
.end method

.method private getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 222
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private readFrrStats()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "frr_stats"

    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllFrrStats(I)Ljava/util/List;
    .locals 6
    .param p1, "modality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/AuthenticationStats;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "authenticationStatsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/AuthenticationStats;>;"
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->readFrrStats()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "frrStats":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "frrStatsJson":Lorg/json/JSONObject;
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 81
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getFaceAuthenticationStatsFromJson(Lorg/json/JSONObject;)Lcom/android/server/biometrics/AuthenticationStats;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    .end local v3    # "frrStatsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 82
    .restart local v3    # "frrStatsJson":Lorg/json/JSONObject;
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 83
    nop

    .line 84
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getFingerprintAuthenticationStatsFromJson(Lorg/json/JSONObject;)Lcom/android/server/biometrics/AuthenticationStats;

    move-result-object v4

    .line 83
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v3    # "frrStatsJson":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    goto :goto_3

    .line 86
    :goto_2
    nop

    .line 87
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "Unable to resolve authentication stats JSON: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AuthenticationStatsPersister"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v2    # "frrStats":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3
    goto :goto_0

    .line 91
    :cond_2
    return-object v0
.end method

.method getFaceAuthenticationStatsFromJson(Lorg/json/JSONObject;)Lcom/android/server/biometrics/AuthenticationStats;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 97
    const-string/jumbo v1, "user_id"

    const/16 v2, -0x2710

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 98
    const-string v2, "face_attempts"

    invoke-direct {p0, p1, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 99
    const-string v3, "face_rejections"

    invoke-direct {p0, p1, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 100
    const-string v4, "enrollment_notifications"

    invoke-direct {p0, p1, v4}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 101
    const-string v5, "face_last_enroll_time"

    invoke-direct {p0, p1, v5}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    .line 102
    const-string v7, "face_last_notification_time"

    invoke-direct {p0, p1, v7}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(IIIIJJI)V

    .line 96
    return-object v0
.end method

.method getFingerprintAuthenticationStatsFromJson(Lorg/json/JSONObject;)Lcom/android/server/biometrics/AuthenticationStats;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 110
    const-string/jumbo v1, "user_id"

    const/16 v2, -0x2710

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 111
    const-string v2, "fingerprint_attempts"

    invoke-direct {p0, p1, v2}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 112
    const-string v3, "fingerprint_rejections"

    invoke-direct {p0, p1, v3}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 113
    const-string v4, "enrollment_notifications"

    invoke-direct {p0, p1, v4}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 114
    const-string v5, "fingerprint_last_enroll_time"

    invoke-direct {p0, p1, v5}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    .line 116
    const-string v7, "fingerprint_last_notification_time"

    invoke-direct {p0, p1, v7}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(IIIIJJI)V

    .line 109
    return-object v0
.end method

.method public persistFrrStats(IIIIJJI)V
    .locals 13
    .param p1, "userId"    # I
    .param p2, "totalAttempts"    # I
    .param p3, "rejectedAttempts"    # I
    .param p4, "enrollmentNotifications"    # I
    .param p5, "lastEnrollmentTime"    # J
    .param p7, "lastFrrNotificationTime"    # J
    .param p9, "modality"    # I

    .line 152
    const-string v1, "AuthenticationStatsPersister"

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->readFrrStats()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v0, "frrStatsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 156
    .local v2, "frrStatJson":Lorg/json/JSONObject;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "user_id"

    if-eqz v4, :cond_1

    .line 157
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 158
    .local v4, "frrStats":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 159
    invoke-direct {p0, v2, v5}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 161
    goto :goto_1

    .line 179
    .end local v0    # "frrStatsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "frrStatJson":Lorg/json/JSONObject;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "frrStats":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 164
    .restart local v0    # "frrStatsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "frrStatJson":Lorg/json/JSONObject;
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "frrStats":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 165
    .end local v4    # "frrStats":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 169
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    move-object v2, v3

    goto :goto_2

    .line 168
    :cond_2
    move-object v3, v2

    .line 171
    .end local v2    # "frrStatJson":Lorg/json/JSONObject;
    .local v3, "frrStatJson":Lorg/json/JSONObject;
    :goto_2
    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->buildFrrStats(Lorg/json/JSONObject;IIIJJI)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "frrStatsSet to persist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "frr_stats"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    .end local v0    # "frrStatsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "frrStatJson":Lorg/json/JSONObject;
    goto :goto_4

    .line 179
    :goto_3
    nop

    .line 180
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "Unable to persist authentication stats"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    return-void
.end method

.method public persistFrrThreshold(F)V
    .locals 2
    .param p1, "frrThreshold"    # F

    .line 188
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "frr_threshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method

.method public removeFrrStats(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 127
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->readFrrStats()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v0, "frrStatsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    .local v2, "frrStats":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, "frrStatJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "user_id"

    invoke-direct {p0, v3, v4}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 135
    goto :goto_1

    .line 140
    .end local v0    # "frrStatsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "frrStats":Ljava/lang/String;
    .end local v3    # "frrStatJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 133
    .restart local v0    # "frrStatsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "frrStats":Ljava/lang/String;
    .restart local v3    # "frrStatJson":Lorg/json/JSONObject;
    :cond_0
    nop

    .line 137
    .end local v2    # "frrStats":Ljava/lang/String;
    .end local v3    # "frrStatJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 139
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "frr_stats"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "frrStatsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 142
    :goto_2
    return-void
.end method
