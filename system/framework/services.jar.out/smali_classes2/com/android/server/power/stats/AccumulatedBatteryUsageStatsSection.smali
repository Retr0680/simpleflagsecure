.class Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "AccumulatedBatteryUsageStatsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;
    }
.end annotation


# static fields
.field public static final ID:J = 0x7fffffffffffffffL

.field public static final TYPE:Ljava/lang/String; = "accumulated-battery-usage-stats"


# instance fields
.field private final mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;


# direct methods
.method constructor <init>(Landroid/os/BatteryUsageStats$Builder;)V
    .locals 1
    .param p1, "batteryUsageStats"    # Landroid/os/BatteryUsageStats$Builder;

    .line 36
    const-string v0, "accumulated-battery-usage-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    .line 57
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 51
    iget-object v0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public getBatteryUsageStatsBuilder()Landroid/os/BatteryUsageStats$Builder;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    return-object v0
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 47
    return-void
.end method
