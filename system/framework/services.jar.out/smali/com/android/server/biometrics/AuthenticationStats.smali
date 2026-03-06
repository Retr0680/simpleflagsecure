.class public Lcom/android/server/biometrics/AuthenticationStats;
.super Ljava/lang/Object;
.source "AuthenticationStats.java"


# static fields
.field private static final FRR_NOT_ENOUGH_ATTEMPTS:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "AuthenticationStats"


# instance fields
.field private mEnrollmentNotifications:I

.field private mLastEnrollmentTime:J

.field private mLastFrrNotificationTime:J

.field private final mModality:I

.field private mRejectedAttempts:I

.field private mTotalAttempts:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "modality"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 55
    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 56
    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    .line 58
    iput-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    .line 59
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    .line 60
    return-void
.end method

.method public constructor <init>(IIIIJJI)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "totalAttempts"    # I
    .param p3, "rejectedAttempts"    # I
    .param p4, "enrollmentNotifications"    # I
    .param p5, "lastEnrollmentTime"    # J
    .param p7, "lastFrrNotificationTime"    # J
    .param p9, "modality"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 44
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 45
    iput p3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 46
    iput p4, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 47
    iput-wide p5, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    .line 48
    iput-wide p7, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    .line 49
    iput p9, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    .line 50
    return-void
.end method


# virtual methods
.method public authenticate(Z)V
    .locals 1
    .param p1, "authenticated"    # Z

    .line 101
    if-nez p1, :cond_0

    .line 102
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 104
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 105
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 132
    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Lcom/android/server/biometrics/AuthenticationStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 136
    return v2

    .line 139
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 140
    .local v1, "target":Lcom/android/server/biometrics/AuthenticationStats;
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v3

    .line 142
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getRejectedAttempts()I

    move-result v3

    .line 144
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getRejectedAttempts()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v3

    .line 146
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getLastEnrollmentTime()J

    move-result-wide v3

    .line 148
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getLastEnrollmentTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getLastFrrNotificationTime()J

    move-result-wide v3

    .line 150
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getLastFrrNotificationTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStats;->getModality()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getModality()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 140
    :goto_0
    return v0
.end method

.method public getEnrollmentNotifications()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    return v0
.end method

.method public getFrr()F
    .locals 2

    .line 92
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    if-lez v0, :cond_0

    .line 93
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 95
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getLastEnrollmentTime()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    return-wide v0
.end method

.method public getLastFrrNotificationTime()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    return-wide v0
.end method

.method public getModality()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    return v0
.end method

.method public getRejectedAttempts()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    return v0
.end method

.method public getTotalAttempts()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 156
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "userId: %d, totalAttempts: %d, rejectedAttempts: %d, enrollmentNotifications: %d, modality: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 156
    return v0
.end method

.method public resetData()V
    .locals 2

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 110
    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 111
    const-string v0, "AuthenticationStats"

    const-string v1, "Reset Counters."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public updateLastEnrollmentTime(J)V
    .locals 0
    .param p1, "lastEnrollmentTime"    # J

    .line 121
    iput-wide p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    .line 122
    return-void
.end method

.method public updateLastFrrNotificationTime(J)V
    .locals 0
    .param p1, "lastFrrNotificationTime"    # J

    .line 126
    iput-wide p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    .line 127
    return-void
.end method

.method public updateNotificationCounter()V
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 117
    return-void
.end method
