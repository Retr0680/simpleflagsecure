.class public final synthetic Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/PowerProfile;

.field public final synthetic f$1:Lcom/android/internal/os/CpuScalingPolicies;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/os/PowerProfile;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/os/CpuScalingPolicies;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-static {v0, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->$r8$lambda$kZpVspbFxjUHJVpatfPqZwCtuTw(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object v0

    return-object v0
.end method
