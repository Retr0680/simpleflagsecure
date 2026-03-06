.class Lcom/android/server/NtThemeManager$1;
.super Ljava/lang/Object;
.source "NtThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NtThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NtThemeManager;


# direct methods
.method constructor <init>(Lcom/android/server/NtThemeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NtThemeManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/android/server/NtThemeManager$1;->this$0:Lcom/android/server/NtThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/server/NtThemeManager$1;->this$0:Lcom/android/server/NtThemeManager;

    invoke-static {v0}, Lcom/android/server/NtThemeManager;->-$$Nest$fgetmLock(Lcom/android/server/NtThemeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NtThemeManager$1;->this$0:Lcom/android/server/NtThemeManager;

    invoke-static {v1}, Lcom/android/server/NtThemeManager;->-$$Nest$fgetmLastRequestedEnableOverlay(Lcom/android/server/NtThemeManager;)Z

    move-result v1

    .line 57
    .local v1, "enableOverlay":Z
    iget-object v2, p0, Lcom/android/server/NtThemeManager$1;->this$0:Lcom/android/server/NtThemeManager;

    invoke-static {v2}, Lcom/android/server/NtThemeManager;->-$$Nest$fgetmLastRequestedNeedConfiguration(Lcom/android/server/NtThemeManager;)Z

    move-result v2

    .line 58
    .local v2, "needConfiguration":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/android/server/NtThemeManager$1;->this$0:Lcom/android/server/NtThemeManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/NtThemeManager;->-$$Nest$mapplyExtraDarkOnWorker(Lcom/android/server/NtThemeManager;ZZ)V

    .line 61
    return-void

    .line 58
    .end local v1    # "enableOverlay":Z
    .end local v2    # "needConfiguration":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
