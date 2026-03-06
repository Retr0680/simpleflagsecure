.class Lcom/android/server/security/CertificateRevocationStatusManager;
.super Ljava/lang/Object;
.source "CertificateRevocationStatusManager.java"


# static fields
.field private static final JOB_ID:I = 0x6792c2ac

.field static final MAX_OFFLINE_REVOCATION_LIST_AGE_DAYS:I = 0x1e

.field static final NUM_HOURS_BEFORE_NEXT_FETCH:I = 0x18

.field private static final REVOCATION_LIST_FILE_NAME:Ljava/lang/String; = "certificate_revocation_list.json"

.field private static final TAG:Ljava/lang/String; = "AVF_CRL"

.field private static final TOP_LEVEL_JSON_PROPERTY_KEY:Ljava/lang/String; = "entries"

.field private static final sFileLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShouldScheduleJob:Z

.field private final mTestRemoteRevocationListUrl:Ljava/lang/String;

.field private final mTestStoredRevocationListFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$F6XQfwTEjF9E2YkHLOw_QbbK6AY(Lcom/android/server/security/CertificateRevocationStatusManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->scheduleJobToFetchRemoteRevocationJob()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "testRemoteRevocationListUrl"    # Ljava/lang/String;
    .param p3, "testStoredRevocationListFile"    # Ljava/io/File;
    .param p4, "shouldScheduleJob"    # Z

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestRemoteRevocationListUrl:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    .line 83
    iput-boolean p4, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mShouldScheduleJob:Z

    .line 84
    return-void
.end method

.method private static checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 4
    .param p0, "revocationList"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 137
    .local p1, "serialNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "serialNumber":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    .end local v1    # "serialNumber":Ljava/lang/String;
    goto :goto_0

    .line 139
    .restart local v1    # "serialNumber":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate has been revoked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    .end local v1    # "serialNumber":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getLastModifiedDateTime(Ljava/io/File;)Ljava/time/LocalDateTime;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 168
    nop

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    .line 168
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method private getRemoteRevocationListUrl()Ljava/lang/String;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestRemoteRevocationListUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestRemoteRevocationListUrl:Ljava/lang/String;

    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    const v1, 0x1040a88

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method private getRevocationListFile()Ljava/io/File;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "certificate_revocation_list.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getStoredRevocationList()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getRevocationListFile()Ljava/io/File;

    move-result-object v0

    .line 147
    .local v0, "offlineRevocationListFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, v0}, Lcom/android/server/security/CertificateRevocationStatusManager;->isRevocationListExpired(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    sget-object v1, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/security/CertificateRevocationStatusManager;->parseRevocationList([B)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    return-object v3

    .line 155
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 152
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "offlineRevocationListFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/security/CertificateRevocationStatusManager;
    :goto_0
    throw v3

    .line 155
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "offlineRevocationListFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/security/CertificateRevocationStatusManager;
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 149
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Offline copy does not exist or has expired."

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isRevocationListExpired(Ljava/io/File;)Z
    .locals 3
    .param p1, "offlineRevocationListFile"    # Ljava/io/File;

    .line 160
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 161
    .local v0, "acceptableLastModifiedDate":Ljava/time/LocalDateTime;
    invoke-static {p1}, Lcom/android/server/security/CertificateRevocationStatusManager;->getLastModifiedDateTime(Ljava/io/File;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 162
    .local v1, "lastModifiedDate":Ljava/time/LocalDateTime;
    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    return v2
.end method

.method private parseRevocationList([B)Lorg/json/JSONObject;
    .locals 3
    .param p1, "revocationListBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 254
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "revocationListJson":Lorg/json/JSONObject;
    const-string v1, "entries"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method private scheduleJobToFetchRemoteRevocationJob()V
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 209
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    const-string v1, "AVF_CRL"

    if-nez v0, :cond_0

    .line 210
    const-string v2, "Unable to get job scheduler."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 213
    :cond_0
    const-string v2, "Scheduling job to fetch remote CRL."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v1

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v4, 0x6792c2ac

    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 222
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 220
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 225
    return-void
.end method


# virtual methods
.method checkRevocationStatus(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 94
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "AVF_CRL"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "serialNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 96
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "serialNumber":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 100
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "serialNumber":Ljava/lang/String;
    goto :goto_0

    .line 98
    .restart local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v4    # "serialNumber":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Certificate serial number cannot be null."

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "serialNumber":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 105
    .local v2, "now":Ljava/time/LocalDateTime;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getRevocationListFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/security/CertificateRevocationStatusManager;->getLastModifiedDateTime(Ljava/io/File;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 106
    const-wide/16 v4, 0x18

    invoke-virtual {v2, v4, v5}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const-string v3, "CRL is fetched recently, do not fetch again."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getStoredRevocationList()Lorg/json/JSONObject;

    move-result-object v3

    .line 109
    .local v3, "revocationList":Lorg/json/JSONObject;
    invoke-static {v3, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 112
    .end local v3    # "revocationList":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 114
    :cond_2
    nop

    .line 116
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->fetchRemoteRevocationListBytes()[B

    move-result-object v3

    .line 117
    .local v3, "revocationListBytes":[B
    invoke-virtual {p0, v3}, Lcom/android/server/security/CertificateRevocationStatusManager;->silentlyStoreRevocationList([B)V

    .line 118
    invoke-direct {p0, v3}, Lcom/android/server/security/CertificateRevocationStatusManager;->parseRevocationList([B)Lorg/json/JSONObject;

    move-result-object v4

    .line 119
    .local v4, "revocationList":Lorg/json/JSONObject;
    invoke-static {v4, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v3    # "revocationListBytes":[B
    goto :goto_2

    .line 120
    .end local v4    # "revocationList":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 121
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "Fallback to check stored revocation status"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    instance-of v0, v3, Ljava/io/IOException;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mShouldScheduleJob:Z

    if-eqz v0, :cond_3

    .line 123
    new-instance v0, Lcom/android/server/security/CertificateRevocationStatusManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/security/CertificateRevocationStatusManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/security/CertificateRevocationStatusManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 126
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getStoredRevocationList()Lorg/json/JSONObject;

    move-result-object v0

    move-object v4, v0

    .line 127
    .restart local v4    # "revocationList":Lorg/json/JSONObject;
    invoke-static {v4, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    nop

    .line 133
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 128
    .end local v4    # "revocationList":Lorg/json/JSONObject;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 129
    .local v0, "ex2":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Unable to load or parse stored revocation status"

    invoke-direct {v4, v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method fetchRemoteRevocationListBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getRemoteRevocationListUrl()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "urlString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .local v1, "url":Ljava/net/URL;
    nop

    .line 247
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 248
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 248
    return-object v3

    .line 247
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3

    .line 244
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse the URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 238
    .end local v1    # "ex":Ljava/net/MalformedURLException;
    :cond_1
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "R.string.vendor_required_attestation_revocation_list_url is empty."

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method silentlyStoreRevocationList([B)V
    .locals 6
    .param p1, "revocationListBytes"    # [B

    .line 182
    sget-object v0, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getRevocationListFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .local v1, "atomicRevocationListFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 186
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 187
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 189
    const-string v3, "AVF_CRL"

    const-string v4, "Successfully stored revocation list."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    goto :goto_0

    .line 197
    .end local v1    # "atomicRevocationListFile":Landroid/util/AtomicFile;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 190
    .restart local v1    # "atomicRevocationListFile":Landroid/util/AtomicFile;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    nop

    .line 191
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "AVF_CRL"

    const-string v5, "Failed to store the certificate revocation list."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 197
    .end local v1    # "atomicRevocationListFile":Landroid/util/AtomicFile;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
