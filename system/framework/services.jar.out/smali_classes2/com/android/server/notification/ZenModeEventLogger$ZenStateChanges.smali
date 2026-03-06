.class Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;
.super Ljava/lang/Object;
.source "ZenModeEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZenStateChanges"
.end annotation


# instance fields
.field mCallingUid:I

.field mNewConfig:Landroid/service/notification/ZenModeConfig;

.field mNewPolicy:Landroid/app/NotificationManager$Policy;

.field mNewZenMode:I

.field mOrigin:I

.field mPrevConfig:Landroid/service/notification/ZenModeConfig;

.field mPrevPolicy:Landroid/app/NotificationManager$Policy;

.field mPrevZenMode:I


# direct methods
.method static bridge synthetic -$$Nest$mgetChangedAutomaticRules(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedAutomaticRules()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNewManualRuleEnabler(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getNewManualRuleEnabler()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRulePackageAndUser(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getRulePackageAndUser(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->init(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldLogChanges(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    move-result p0

    return p0
.end method

.method constructor <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 249
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 252
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return-void
.end method

.method private getChangedAutomaticRules()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$RuleDiff;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 596
    .local v0, "ruleDiffs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;>;"
    new-instance v1, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v2, v3}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 597
    .local v1, "diff":Landroid/service/notification/ZenModeDiff$ConfigDiff;
    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    return-object v0

    .line 601
    :cond_0
    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    move-result-object v2

    .line 602
    .local v2, "autoDiffs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;>;"
    if-eqz v2, :cond_1

    .line 603
    return-object v2

    .line 605
    :cond_1
    return-object v0
.end method

.method private getNewManualRuleEnabler()Ljava/lang/String;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    return-object v0

    .line 642
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRulePackageAndUser(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "diff"    # Landroid/service/notification/ZenModeDiff$RuleDiff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$RuleDiff;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 616
    .local v0, "configForSearch":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {p2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 620
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 621
    return-object v1

    .line 624
    :cond_1
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 625
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v2, :cond_3

    .line 626
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 627
    new-instance v1, Landroid/util/Pair;

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 629
    :cond_2
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 630
    new-instance v1, Landroid/util/Pair;

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 631
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 630
    return-object v1

    .line 634
    :cond_3
    return-object v1
.end method

.method private hasActiveRuleCountDiff()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasChannelsBypassingDiff()Z
    .locals 4

    .line 576
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 578
    .local v0, "prevChannelsBypassing":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getAreChannelsBypassing()Z

    move-result v3

    if-eq v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private hasPolicyDiff()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V
    .locals 1
    .param p1, "prevInfo"    # Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;
    .param p2, "newInfo"    # Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;
    .param p3, "callingUid"    # I
    .param p4, "origin"    # I

    .line 259
    iget v0, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 260
    iget v0, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 261
    iget-object v0, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 262
    iget-object v0, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 263
    iget-object v0, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mPolicy:Landroid/app/NotificationManager$Policy;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    .line 264
    iget-object v0, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mPolicy:Landroid/app/NotificationManager$Policy;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 265
    iput p3, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 266
    iput p4, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    .line 267
    return-void
.end method

.method private shouldLogChanges()Z
    .locals 3

    .line 284
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->zenModeFlipped()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 285
    return v1

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasActiveRuleCountDiff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    return v1

    .line 298
    :cond_1
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 299
    return v2

    .line 301
    :cond_2
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasActiveRuleCountDiff()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1
.end method

.method private toState(Z)I
    .locals 1
    .param p1, "allow"    # Z

    .line 586
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private zenModeFlipped()Z
    .locals 3

    .line 306
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iget v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 307
    return v2

    .line 312
    :cond_0
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    if-nez p1, :cond_0

    .line 410
    return-object v0

    .line 412
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    .line 415
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/16 v2, 0x3e7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 416
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    .line 420
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 421
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    goto :goto_0

    .line 426
    :cond_3
    return-object v0
.end method

.method protected copy()Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;
    .locals 2

    .line 651
    new-instance v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-direct {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;-><init>()V

    .line 652
    .local v0, "copy":Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;
    iget v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iput v1, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 653
    iget v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    iput v1, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 654
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 655
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 656
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    .line 657
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 658
    iget v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    iput v1, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 659
    iget v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    iput v1, v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    .line 660
    return-object v0
.end method

.method getActiveRuleTypes()[I
    .locals 5

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "activeTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object v1

    .line 451
    .local v1, "activeRules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 452
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2

    .line 455
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 456
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_0

    .line 460
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 461
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 462
    .local v2, "out":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 463
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 465
    .end local v3    # "i":I
    return-object v2
.end method

.method getAreChannelsBypassing()Z
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 572
    :cond_1
    return v1
.end method

.method getChangeOrigin()I
    .locals 1

    .line 495
    nop

    .line 496
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return v0
.end method

.method getChangedRuleType()I
    .locals 7

    .line 359
    new-instance v0, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 360
    .local v0, "diff":Landroid/service/notification/ZenModeDiff$ConfigDiff;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 364
    return v2

    .line 367
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getManualRuleDiff()Landroid/service/notification/ZenModeDiff$RuleDiff;

    move-result-object v1

    .line 368
    .local v1, "manualDiff":Landroid/service/notification/ZenModeDiff$RuleDiff;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 372
    nop

    .line 373
    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 378
    :cond_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    move-result-object v3

    .line 379
    .local v3, "autoDiffs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;>;"
    if-eqz v3, :cond_5

    .line 380
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 381
    .local v5, "d":Landroid/service/notification/ZenModeDiff$RuleDiff;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 383
    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 384
    :cond_3
    const/4 v2, 0x2

    return v2

    .line 387
    .end local v5    # "d":Landroid/service/notification/ZenModeDiff$RuleDiff;
    :cond_4
    goto :goto_0

    .line 389
    :cond_5
    return v2
.end method

.method getDNDPolicyProto()[B
    .locals 5

    .line 512
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x0

    return-object v0

    .line 516
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 517
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 520
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v2, :cond_2

    .line 521
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 522
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 523
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    .line 522
    const-wide v3, 0x10e00000002L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 524
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 525
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 526
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000005L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 527
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000006L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 528
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000007L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 529
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000008L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 530
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000009L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 532
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000aL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 533
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000bL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 534
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000cL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 535
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000dL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 536
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000eL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 537
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000fL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 538
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 539
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    .line 538
    const-wide v3, 0x10e00000010L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 545
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 547
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v2

    .line 546
    invoke-static {v2}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    .line 545
    const-wide v3, 0x10e00000011L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 548
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 550
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v2

    .line 549
    invoke-static {v2}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    .line 548
    const-wide v3, 0x10e00000012L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 551
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 552
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    move-result v2

    .line 551
    const-wide v3, 0x10e00000013L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 553
    nop

    .line 554
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    const/4 v2, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const/4 v2, 0x2

    .line 553
    :goto_0
    const-wide v3, 0x10e00000014L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    .line 558
    :cond_2
    const-string v2, "ZenModeEventLogger"

    const-string v3, "attempted to write zen mode log event with null policy"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_1
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 562
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method getEventId()Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;
    .locals 2

    .line 322
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    move-result v0

    const-string v1, "ZenModeEventLogger"

    if-nez v0, :cond_0

    .line 323
    const-string v0, "attempt to get DNDStateChanged fields without shouldLog=true"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->zenModeFlipped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    if-nez v0, :cond_1

    .line 327
    sget-object v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_ON:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object v0

    .line 329
    :cond_1
    sget-object v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_OFF:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object v0

    .line 333
    :cond_2
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v0, :cond_5

    .line 337
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    :cond_3
    const-string v0, "Detected policy diff even though DND is OFF and not toggled"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_4
    sget-object v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object v0

    .line 344
    :cond_5
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    goto :goto_0

    .line 349
    :cond_7
    sget-object v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object v0

    .line 345
    :goto_0
    sget-object v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_POLICY_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object v0
.end method

.method getIsUserAction()Z
    .locals 2

    .line 470
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

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

.method getNumRulesActive()I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result v0

    return v0
.end method

.method getPackageUid()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    return v0
.end method

.method isFromSystemOrSystemUi()Z
    .locals 3

    .line 475
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
