.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    new-instance v0, Lcom/android/server/wm/ActivityRecord$WindowStyle;

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-direct {v0, p1}, Lcom/android/server/wm/ActivityRecord$WindowStyle;-><init>(Landroid/content/res/TypedArray;)V

    return-object v0
.end method
