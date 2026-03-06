.class public Lcom/android/server/NtKafkaEventHelper;
.super Ljava/lang/Object;
.source "NtKafkaEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NtKafkaEventHelper$LazyHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NtKafkaEventHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFocusPackage:Ljava/lang/String;

.field private mCurrentPackagePid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NtKafkaEventHelper;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NtKafkaEventHelper;->mCurrentFocusPackage:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/android/server/NtKafkaEventHelper;->mCurrentPackagePid:Ljava/lang/String;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NtKafkaEventHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/NtKafkaEventHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/NtKafkaEventHelper;
    .locals 1

    .line 39
    invoke-static {}, Lcom/android/server/NtKafkaEventHelper$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/NtKafkaEventHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityRecordChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityRecordChanged: info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtKafkaEventHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/server/NtKafkaEventHelper;->mCurrentPackagePid:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v0

    const-string/jumbo v1, "nt_package_pid"

    invoke-virtual {v0, v1, p2}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Lcom/android/server/NtKafkaEventHelper;->mCurrentPackagePid:Ljava/lang/String;

    .line 73
    :cond_0
    return-void
.end method

.method public onAppFocusChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/android/server/NtKafkaEventHelper;->mCurrentFocusPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NtKafkaEventHelper;->mCurrentFocusPackage:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v0

    const-string/jumbo v1, "foreground_app"

    invoke-virtual {v0, v1, p2}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/android/server/NtKafkaEventHelper;->mCurrentFocusPackage:Ljava/lang/String;

    .line 47
    :cond_0
    return-void
.end method

.method public onFgsChanged(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "started"    # Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, "-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "event":Ljava/lang/String;
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v1

    const-string/jumbo v2, "foreground_service"

    invoke-virtual {v1, v2, v0}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onLockScreenShown(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardShowing"    # Z

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockScreenShown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtKafkaEventHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string/jumbo v0, "nt_lockscreen_show"

    if-eqz p2, :cond_0

    .line 59
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v0, v2}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void
.end method

.method public onLockScreenUnlocked(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unlocked"    # Z

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockScreenUnlocked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtKafkaEventHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string/jumbo v0, "nt_lockscreen_unlocked"

    if-eqz p2, :cond_0

    .line 94
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v0, v2}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void
.end method

.method public onNavigationStatusChanged(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # Z

    .line 51
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "navigation_status"

    invoke-virtual {v0, v2, v1}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onPopUpWinChanged(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "started"    # Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, "-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "event":Ljava/lang/String;
    invoke-static {p1}, Lcom/nothing/kafka/EventProducer;->getInstance(Landroid/content/Context;)Lcom/nothing/kafka/EventProducer;

    move-result-object v1

    const-string/jumbo v2, "pop_up_window"

    invoke-virtual {v1, v2, v0}, Lcom/nothing/kafka/EventProducer;->fire(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method
