.class public Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
.super Ljava/lang/Object;
.source "PackageMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentStateMetrics"
.end annotation


# instance fields
.field public mCallingUid:I

.field private mClassName:Ljava/lang/String;

.field public mComponentNewState:I

.field public mComponentOldState:I

.field public mIsForWholeApp:Z

.field private mPackageName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager$ComponentEnabledSetting;III)V
    .locals 1
    .param p1, "setting"    # Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .param p2, "uid"    # I
    .param p3, "componentOldState"    # I
    .param p4, "callingUid"    # I

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput p2, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mUid:I

    .line 432
    iput p3, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentOldState:I

    .line 433
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentNewState:I

    .line 434
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    .line 435
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mClassName:Ljava/lang/String;

    .line 437
    iput p4, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mCallingUid:I

    .line 438
    return-void
.end method

.method private isSameComponent(Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 464
    if-nez p1, :cond_0

    .line 465
    const/4 v0, 0x0

    return v0

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 467
    :goto_0
    return v0
.end method


# virtual methods
.method public isLauncherActivity(Lcom/android/server/pm/Computer;I)Z
    .locals 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I

    .line 441
    iget-boolean v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 442
    return v1

    .line 445
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 446
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-wide/32 v6, 0xc0240

    const/16 v8, 0x3e8

    const/4 v5, 0x0

    move-object v3, p1

    move v9, p2

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .end local p2    # "userId":I
    .local v3, "computer":Lcom/android/server/pm/Computer;
    .local v9, "userId":I
    invoke-interface/range {v3 .. v9}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 453
    .local p1, "launcherActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v1

    .line 454
    .local p2, "launcherActivitiesSize":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 456
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->isSameComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 457
    const/4 v1, 0x1

    return v1

    .line 456
    :cond_2
    nop

    .line 454
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 460
    .end local v0    # "i":I
    return v1
.end method
