.class Lcom/android/server/power/stats/BatteryUsageStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "BatteryUsageStatsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryUsageStatsSection"

.field public static final TYPE:Ljava/lang/String; = "battery-usage-stats"


# instance fields
.field private final mBatteryUsageStats:Landroid/os/BatteryUsageStats;


# direct methods
.method constructor <init>(Landroid/os/BatteryUsageStats;)V
    .locals 1
    .param p1, "batteryUsageStats"    # Landroid/os/BatteryUsageStats;

    .line 37
    const-string v0, "battery-usage-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BatteryUsageStatsSection"

    const-string v2, "Closing BatteryUsageStats"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 52
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public getBatteryUsageStats()Landroid/os/BatteryUsageStats;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

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

    .line 47
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {v0, p1}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 48
    return-void
.end method
