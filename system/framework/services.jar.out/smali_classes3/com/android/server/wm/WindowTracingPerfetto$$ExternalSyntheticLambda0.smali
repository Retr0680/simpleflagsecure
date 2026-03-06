.class public final synthetic Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowTracingPerfetto;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowTracingPerfetto;ZZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowTracingPerfetto;

    iput-boolean p2, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final trace(Landroid/tracing/perfetto/TracingContext;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowTracingPerfetto;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/WindowTracingPerfetto;->$r8$lambda$FVcHj5D-VNRpwx8tAWr3qy03_iI(Lcom/android/server/wm/WindowTracingPerfetto;ZZLjava/lang/String;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method
