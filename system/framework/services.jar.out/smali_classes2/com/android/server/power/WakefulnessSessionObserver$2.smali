.class Lcom/android/server/power/WakefulnessSessionObserver$2;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/WakefulnessSessionObserver;->registerDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/WakefulnessSessionObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$2;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "i"    # I

    .line 229
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 221
    if-nez p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$2;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$2;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetPhysicalDisplayPortId(Lcom/android/server/power/WakefulnessSessionObserver;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fputmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    .line 225
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "i"    # I

    .line 233
    return-void
.end method
