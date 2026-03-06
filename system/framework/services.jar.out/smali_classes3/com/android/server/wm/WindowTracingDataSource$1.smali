.class Lcom/android/server/wm/WindowTracingDataSource$1;
.super Lcom/android/server/wm/WindowTracingDataSource$Instance;
.source "WindowTracingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowTracingDataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/server/wm/WindowTracingDataSource$Instance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowTracingDataSource;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowTracingDataSource;Landroid/tracing/perfetto/DataSource;ILcom/android/server/wm/WindowTracingDataSource$Config;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowTracingDataSource;
    .param p2, "dataSource"    # Landroid/tracing/perfetto/DataSource;
    .param p3, "instanceIndex"    # I
    .param p4, "config"    # Lcom/android/server/wm/WindowTracingDataSource$Config;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/WindowTracingDataSource$1;->this$0:Lcom/android/server/wm/WindowTracingDataSource;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/WindowTracingDataSource$Instance;-><init>(Landroid/tracing/perfetto/DataSource;ILcom/android/server/wm/WindowTracingDataSource$Config;)V

    return-void
.end method


# virtual methods
.method protected onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .locals 2
    .param p1, "args"    # Landroid/tracing/perfetto/StartCallbackArguments;

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingDataSource$1;->this$0:Lcom/android/server/wm/WindowTracingDataSource;

    invoke-static {v0}, Lcom/android/server/wm/WindowTracingDataSource;->-$$Nest$fgetmWindowTracing(Lcom/android/server/wm/WindowTracingDataSource;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowTracingPerfetto;

    .line 101
    .local v0, "windowTracing":Lcom/android/server/wm/WindowTracingPerfetto;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracingPerfetto;->onStart(Lcom/android/server/wm/WindowTracingDataSource$Config;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .locals 2
    .param p1, "args"    # Landroid/tracing/perfetto/StopCallbackArguments;

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingDataSource$1;->this$0:Lcom/android/server/wm/WindowTracingDataSource;

    invoke-static {v0}, Lcom/android/server/wm/WindowTracingDataSource;->-$$Nest$fgetmWindowTracing(Lcom/android/server/wm/WindowTracingDataSource;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowTracingPerfetto;

    .line 109
    .local v0, "windowTracing":Lcom/android/server/wm/WindowTracingPerfetto;
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracingPerfetto;->onStop(Lcom/android/server/wm/WindowTracingDataSource$Config;)V

    .line 112
    :cond_0
    return-void
.end method
