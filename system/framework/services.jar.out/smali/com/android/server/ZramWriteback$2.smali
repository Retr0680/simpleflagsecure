.class Lcom/android/server/ZramWriteback$2;
.super Ljava/lang/Thread;
.source "ZramWriteback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ZramWriteback;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZramWriteback;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/server/ZramWriteback;Ljava/lang/String;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZramWriteback;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/android/server/ZramWriteback$2;->this$0:Lcom/android/server/ZramWriteback;

    iput-object p3, p0, Lcom/android/server/ZramWriteback$2;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 312
    invoke-static {}, Lcom/android/server/ZramWriteback;->-$$Nest$smisUfsLifetimeEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/server/ZramWriteback$2;->this$0:Lcom/android/server/ZramWriteback;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->-$$Nest$mmarkAndFlushPages(Lcom/android/server/ZramWriteback;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/ZramWriteback$2;->this$0:Lcom/android/server/ZramWriteback;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->-$$Nest$smschedNextWriteback(Landroid/content/Context;)V

    goto :goto_0

    .line 321
    :cond_0
    const-string v0, "ZramWriteback"

    const-string v1, "ZramWriteback job stop."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/android/server/ZramWriteback$2;->this$0:Lcom/android/server/ZramWriteback;

    iget-object v1, p0, Lcom/android/server/ZramWriteback$2;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 326
    return-void
.end method
