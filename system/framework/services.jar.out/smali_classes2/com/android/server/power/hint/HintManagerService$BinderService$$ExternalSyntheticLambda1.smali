.class public final synthetic Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/hint/HintManagerService$BinderService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/hint/HintManagerService$BinderService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/hint/HintManagerService$BinderService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/hint/HintManagerService$BinderService;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/server/power/hint/HintManagerService$BinderService;->$r8$lambda$eyDdSdezowLMa2_XJTKMNA6O98o(Lcom/android/server/power/hint/HintManagerService$BinderService;Ljava/lang/Integer;)Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    move-result-object p1

    return-object p1
.end method
