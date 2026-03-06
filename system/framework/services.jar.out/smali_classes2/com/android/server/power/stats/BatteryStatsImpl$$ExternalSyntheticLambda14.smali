.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public final onBluetoothPowerStatsRetrieved(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$6yBcUDmGxMjHAVKJP_PZldZF_ok(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    return-void
.end method
