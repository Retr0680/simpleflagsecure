.class Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# static fields
.field private static final BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1066
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 1067
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J

    .line 1066
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1065
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1072
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 1151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :sswitch_0
    nop

    .line 1124
    const-string v4, "backstage_power"

    const-string/jumbo v5, "min_consumed_power_threshold"

    .line 1125
    invoke-static {v4, v5, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    float-to-double v4, v0

    .line 1129
    .local v4, "minConsumedPowerThreshold":D
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 1130
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1133
    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1135
    .local v0, "query":Landroid/os/BatteryUsageStatsQuery$Builder;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$smisBatteryUsageStatsAccumulationSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1136
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    sget-wide v6, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J

    .line 1137
    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 1140
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryUsageStats;

    .line 1141
    .local v1, "bus":Landroid/os/BatteryUsageStats;
    new-instance v2, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;

    new-instance v3, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    invoke-direct {v3}, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;-><init>(Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;)V

    .line 1142
    invoke-virtual {v2, v1, p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->logStats(Landroid/os/BatteryUsageStats;Ljava/util/List;)I

    move-result v2

    .line 1144
    .local v2, "pullResult":I
    :try_start_0
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    goto :goto_0

    .line 1145
    :catch_0
    move-exception v3

    .line 1146
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "BatteryStatsService"

    const-string v7, "Failure close BatteryUsageStats"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return v2

    .line 1094
    .end local v0    # "query":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v1    # "bus":Landroid/os/BatteryUsageStats;
    .end local v2    # "pullResult":I
    .end local v4    # "minConsumedPowerThreshold":D
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 1074
    :sswitch_2
    nop

    .line 1079
    const-string v4, "backstage_power"

    const-string/jumbo v5, "min_consumed_power_threshold"

    .line 1080
    invoke-static {v4, v5, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    float-to-double v4, v0

    .line 1082
    .restart local v4    # "minConsumedPowerThreshold":D
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 1084
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1088
    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 1090
    .local v0, "querySinceReset":Landroid/os/BatteryUsageStatsQuery;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryUsageStats;

    .line 1091
    .restart local v1    # "bus":Landroid/os/BatteryUsageStats;
    goto :goto_1

    .line 1097
    .end local v0    # "querySinceReset":Landroid/os/BatteryUsageStatsQuery;
    .end local v1    # "bus":Landroid/os/BatteryUsageStats;
    .end local v4    # "minConsumedPowerThreshold":D
    :sswitch_3
    nop

    .line 1101
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 1102
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J

    move-result-wide v4

    .line 1104
    .local v4, "sessionStart":J
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1105
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v6, v6, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v6

    .line 1106
    .local v6, "sessionEnd":J
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 1109
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1110
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1111
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1112
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 1114
    .local v0, "queryBeforeReset":Landroid/os/BatteryUsageStatsQuery;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryUsageStats;

    .line 1115
    .restart local v1    # "bus":Landroid/os/BatteryUsageStats;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/BatteryStatsService;->setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V

    .line 1116
    nop

    .line 1153
    .end local v0    # "queryBeforeReset":Landroid/os/BatteryUsageStatsQuery;
    .end local v4    # "sessionStart":J
    .end local v6    # "sessionEnd":J
    :goto_1
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getStatsProto()[B

    move-result-object v0

    .line 1155
    .local v0, "statsProto":[B
    :try_start_2
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1158
    goto :goto_2

    .line 1156
    :catch_1
    move-exception v2

    .line 1157
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Failure close BatteryUsageStats"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    return v3

    .line 1106
    .end local v0    # "statsProto":[B
    .end local v1    # "bus":Landroid/os/BatteryUsageStats;
    .restart local v4    # "sessionStart":J
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x277f -> :sswitch_3
        0x2780 -> :sswitch_2
        0x2781 -> :sswitch_1
        0x27e1 -> :sswitch_0
    .end sparse-switch
.end method
