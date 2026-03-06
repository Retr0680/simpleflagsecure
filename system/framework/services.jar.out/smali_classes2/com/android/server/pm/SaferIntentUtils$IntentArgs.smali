.class public Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
.super Ljava/lang/Object;
.source "SaferIntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SaferIntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentArgs"
.end annotation


# instance fields
.field public callingPid:I

.field public callingUid:I

.field public intent:Landroid/content/Intent;

.field public isReceiver:Z

.field public platformCompat:Lcom/android/server/compat/PlatformCompat;

.field public resolveForStart:Z

.field public resolvedType:Ljava/lang/String;

.field public snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "isReceiver"    # Z
    .param p4, "resolveForStart"    # Z
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean p3, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    .line 183
    iput-object p1, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 184
    iput-object p2, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    .line 185
    iput-boolean p4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolveForStart:Z

    .line 186
    iput p5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 187
    if-eqz p4, :cond_0

    move v0, p6

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingPid:I

    .line 188
    return-void
.end method


# virtual methods
.method isChangeEnabled(J)Z
    .locals 2
    .param p1, "changeId"    # J

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    iget v1, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUidInternalNoLogging(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method reportEvent(IZ)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "blocked"    # Z

    .line 196
    iget-boolean v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolveForStart:Z

    if-eqz v0, :cond_0

    .line 197
    iget v2, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    iget v3, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingPid:I

    iget-object v4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    move v1, p1

    move v6, p2

    .end local p1    # "event":I
    .end local p2    # "blocked":Z
    .local v1, "event":I
    .local v6, "blocked":Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SaferIntentUtils;->reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_0

    .line 196
    .end local v1    # "event":I
    .end local v6    # "blocked":Z
    .restart local p1    # "event":I
    .restart local p2    # "blocked":Z
    :cond_0
    move v1, p1

    move v6, p2

    .line 200
    .end local p1    # "event":I
    .end local p2    # "blocked":Z
    .restart local v1    # "event":I
    .restart local v6    # "blocked":Z
    :goto_0
    return-void
.end method
