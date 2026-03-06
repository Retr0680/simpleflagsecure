.class Lcom/android/server/notification/ZenModeEventLogger;
.super Ljava/lang/Object;
.source "ZenModeEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;,
        Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;,
        Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;
    }
.end annotation


# static fields
.field protected static final ACTIVE_RULE_TYPE_MANUAL:I = 0x3e7

.field private static final TAG:Ljava/lang/String; = "ZenModeEventLogger"

.field static final ZEN_MODE_UNKNOWN:I = -0x1


# instance fields
.field mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-direct {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 77
    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger;->mPm:Landroid/content/pm/PackageManager;

    .line 78
    return-void
.end method

.method private maybeReassignCallingUid()V
    .locals 6

    .line 135
    const/4 v0, -0x1

    .line 136
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 142
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 143
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->isFromSystemOrSystemUi()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 144
    invoke-static {v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mgetNewManualRuleEnabler(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mgetNewManualRuleEnabler(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget-object v2, v2, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v2, Landroid/service/notification/ZenModeConfig;->user:I

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 159
    nop

    .line 161
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->isFromSystemOrSystemUi()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    return-void

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 174
    invoke-static {v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mgetChangedAutomaticRules(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 175
    .local v2, "changedRules":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 176
    return-void

    .line 178
    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 179
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 178
    invoke-static {v3, v5, v4}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mgetRulePackageAndUser(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;

    move-result-object v3

    .line 182
    .local v3, "ruleInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_5

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    goto :goto_2

    .line 187
    :cond_6
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 188
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 184
    :goto_2
    return-void

    .line 191
    .end local v2    # "changedRules":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;>;"
    .end local v3    # "ruleInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    if-nez v1, :cond_9

    :cond_8
    goto :goto_5

    .line 197
    :cond_9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 198
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iput v2, v3, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v2    # "uid":I
    goto :goto_4

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to find package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenModeEventLogger"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    return-void

    .line 193
    :goto_5
    return-void
.end method


# virtual methods
.method logChanges()V
    .locals 13

    .line 209
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 210
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getEventId()Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->getId()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget v3, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget v4, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 213
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 214
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getNumRulesActive()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 215
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getIsUserAction()Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 216
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getPackageUid()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 217
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getDNDPolicyProto()[B

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 218
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getAreChannelsBypassing()Z

    move-result v10

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 219
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getActiveRuleTypes()[I

    move-result-object v11

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 220
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangeOrigin()I

    move-result v12

    .line 209
    const/16 v1, 0x291

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIZI[BZ[II)V

    .line 221
    return-void
.end method

.method public final maybeLogZenChange(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V
    .locals 1
    .param p1, "prevInfo"    # Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;
    .param p2, "newInfo"    # Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;
    .param p3, "callingUid"    # I
    .param p4, "origin"    # I

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$minit(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V

    .line 118
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->-$$Nest$mshouldLogChanges(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger;->maybeReassignCallingUid()V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger;->logChanges()V

    .line 124
    :cond_0
    new-instance v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-direct {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 125
    return-void
.end method
