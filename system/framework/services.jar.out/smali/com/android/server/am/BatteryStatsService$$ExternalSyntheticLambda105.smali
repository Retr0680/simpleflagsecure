.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;->f$0:Lcom/android/server/am/BatteryStatsService;

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;->f$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$ciMg9FlozhJ3llhSoybBUr31n7w(Lcom/android/server/am/BatteryStatsService;)D

    move-result-wide v0

    return-wide v0
.end method
