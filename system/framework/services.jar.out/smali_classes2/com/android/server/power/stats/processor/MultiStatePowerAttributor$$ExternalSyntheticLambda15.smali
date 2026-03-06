.class public final synthetic Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda15;->f$0:Lcom/android/internal/os/PowerProfile;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda15;->f$0:Lcom/android/internal/os/PowerProfile;

    invoke-static {v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->$r8$lambda$HupV73DXNt1muGGqeEn16l97Wsk(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object v0

    return-object v0
.end method
