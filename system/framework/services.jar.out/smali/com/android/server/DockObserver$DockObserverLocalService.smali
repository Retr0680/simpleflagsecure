.class public Lcom/android/server/DockObserver$DockObserverLocalService;
.super Lcom/android/server/DockObserverInternal;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DockObserverLocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DockObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/android/server/DockObserver$DockObserverLocalService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Lcom/android/server/DockObserverInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualDockState()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/DockObserver$DockObserverLocalService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->-$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I

    move-result v0

    return v0
.end method
