.class public final Lcom/android/server/autofill/SessionCommittedEventLogger;
.super Ljava/lang/Object;
.source "SessionCommittedEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionCommittedEventLogger"


# instance fields
.field private mEventInternal:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method public static synthetic $r8$lambda$BlSVEKxPp9P4avERxsDAaz58jd8(JLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetSessionDurationMillis$4(JLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HsqkxAYc58iyLU4WNd-Mk5xk_H0(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetCommitReason$2(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LY4Ou2aqc536Lj2KOQB7gxeLyxU(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetCommitReasonIfUnset$3(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O8D0U-ZFMbQ9K-k6cv1g0NVoX3M(ZLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetLastFillResponseHasSaveInfo$8(ZLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNwSlTdk9UL7p_QrJ6DefjJ6uoA(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetSaveInfoCount$6(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mslFZYMhJ8u326ComgYz6ovFgSk(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetRequestCount$1(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ny2JbwLP97Bu2zo1p4umW6asfOA(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetAutofillServiceUid$5(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qGLRZewFU1njUV1aReG5bVmk-ls(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetComponentPackageUid$0(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xAUSKFAWNmZqjXPE67ZKGiJwK2Q(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->lambda$maybeSetSaveDataTypeCount$7(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    .line 42
    new-instance v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    invoke-direct {v0}, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;-><init>()V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 43
    return-void
.end method

.method public static forSessionId(I)Lcom/android/server/autofill/SessionCommittedEventLogger;
    .locals 1
    .param p0, "sessionId"    # I

    .line 49
    new-instance v0, Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/SessionCommittedEventLogger;-><init>(I)V

    return-object v0
.end method

.method private static synthetic lambda$maybeSetAutofillServiceUid$5(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0
    .param p0, "uid"    # I
    .param p1, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 103
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    .line 104
    return-void
.end method

.method private static synthetic lambda$maybeSetCommitReason$2(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 75
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    .line 76
    return-void
.end method

.method private static synthetic lambda$maybeSetCommitReasonIfUnset$3(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 1
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 83
    iget v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    .line 87
    return-void
.end method

.method private static synthetic lambda$maybeSetComponentPackageUid$0(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 57
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    .line 58
    return-void
.end method

.method private static synthetic lambda$maybeSetLastFillResponseHasSaveInfo$8(ZLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0
    .param p0, "lastFillResponseHasSaveInfo"    # Z
    .param p1, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 130
    iput-boolean p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    .line 131
    return-void
.end method

.method private static synthetic lambda$maybeSetRequestCount$1(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0
    .param p0, "val"    # I
    .param p1, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 66
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    .line 67
    return-void
.end method

.method private static synthetic lambda$maybeSetSaveDataTypeCount$7(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0
    .param p0, "saveDataTypeCount"    # I
    .param p1, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 121
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    .line 122
    return-void
.end method

.method private static synthetic lambda$maybeSetSaveInfoCount$6(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0
    .param p0, "saveInfoCount"    # I
    .param p1, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 112
    iput p0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    .line 113
    return-void
.end method

.method private static synthetic lambda$maybeSetSessionDurationMillis$4(JLcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V
    .locals 0
    .param p0, "timestamp"    # J
    .param p2, "event"    # Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 95
    iput-wide p0, p2, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    .line 96
    return-void
.end method


# virtual methods
.method public logAndEndEvent()V
    .locals 15

    .line 138
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "SessionCommittedEventLogger"

    if-nez v0, :cond_0

    .line 139
    const-string v0, "Shouldn\'t be logging AutofillSessionCommitted again for same session."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 143
    .local v0, "event":Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log AutofillSessionCommitted: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mComponentPackageUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCommitReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSessionDurationMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mServiceUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSaveInfoCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSaveDataTypeCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mLastFillResponseHasSaveInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    iget v4, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    iget v5, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    iget v1, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    int-to-long v6, v1

    iget v8, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    iget-wide v9, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    iget v11, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    iget v12, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    iget v13, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    iget-boolean v14, v0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    const/16 v3, 0x25f

    invoke-static/range {v3 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJIIIZ)V

    .line 166
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 167
    return-void
.end method

.method public maybeSetAutofillServiceUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 101
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 105
    return-void
.end method

.method public maybeSetCommitReason(I)V
    .locals 2
    .param p1, "val"    # I

    .line 74
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 77
    return-void
.end method

.method public maybeSetCommitReasonIfUnset(I)V
    .locals 2
    .param p1, "val"    # I

    .line 81
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 88
    return-void
.end method

.method public maybeSetComponentPackageUid(I)V
    .locals 2
    .param p1, "val"    # I

    .line 56
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 59
    return-void
.end method

.method public maybeSetLastFillResponseHasSaveInfo(Z)V
    .locals 2
    .param p1, "lastFillResponseHasSaveInfo"    # Z

    .line 129
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 132
    return-void
.end method

.method public maybeSetRequestCount(I)V
    .locals 2
    .param p1, "val"    # I

    .line 65
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 68
    return-void
.end method

.method public maybeSetSaveDataTypeCount(I)V
    .locals 2
    .param p1, "saveDataTypeCount"    # I

    .line 120
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 123
    return-void
.end method

.method public maybeSetSaveInfoCount(I)V
    .locals 2
    .param p1, "saveInfoCount"    # I

    .line 111
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    return-void
.end method

.method public maybeSetSessionDurationMillis(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .line 94
    iget-object v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 97
    return-void
.end method
