.class public final synthetic Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ZenModeHelper;

.field public final synthetic f$1:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ZenModeHelper;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ZenModeConfig$ZenRule;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->$r8$lambda$0g2TCyxqVWjORDguCddL_QuImw0(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
