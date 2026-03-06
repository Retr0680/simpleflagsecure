.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->$r8$lambda$6f0G5pcQtnjw__iU8ofU_Zna2Gs(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    return p1
.end method
