.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/ToBooleanFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/ToBooleanFunction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;->f$0:Lcom/android/internal/util/ToBooleanFunction;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;->f$0:Lcom/android/internal/util/ToBooleanFunction;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p1}, Lcom/android/server/wm/TaskFragment;->$r8$lambda$QeeKK6OE5m92hyEIJf7vfer3PW8(Lcom/android/internal/util/ToBooleanFunction;Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    return p1
.end method
