.class public final synthetic Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/TouchpadDebugViewController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->switchVisualisationToTouchpadId(I)V

    return-void
.end method
